struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(33115i, -43148i), vec2<i32>(-1i, -14093i), vec2<i32>(54536i, -1i), vec2<i32>(i32(-2147483648), -49089i));

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: array<f32, 28>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = _wgslsmith_mult_vec4_u32(~max(vec4<u32>(76055u, select(1u, arg_2.b.a, false), arg_2.b.a, _wgslsmith_clamp_u32(0u, 1u, 41711u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(80100u, arg_2.b.a, arg_0.a.b.a, 28847u), vec4<u32>(arg_0.a.b.a, arg_0.a.b.a, arg_0.a.b.a, arg_0.a.b.a))), vec4<u32>(_wgslsmith_mult_u32(arg_2.b.a ^ 6376u, _wgslsmith_div_u32(71686u, 44928u)), ~4294967295u, (52379u ^ arg_0.a.b.a) | 661u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(39383u, arg_0.a.b.a, arg_2.b.a), vec3<u32>(20092u, 0u, 1u))) ^ abs(vec4<u32>(abs(arg_2.b.a), 13023u, 0u, 1u)));
    var var_1 = arg_0.a.b;
    var_1 = Struct_1(_wgslsmith_sub_u32(firstLeadingBit(arg_0.a.b.a), 5348u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.b.x - 1140f), arg_0.a.a.x, _wgslsmith_div_f32(1279f, var_1.b.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.a.b.b, vec3<f32>(var_1.b.x, arg_2.a.x, var_1.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(695f)), var_1.b.x))), min(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(countOneBits(arg_0.a.b.d), countOneBits(arg_0.a.b.d)), arg_2.b.d), ~(-vec2<i32>(59200i, arg_2.b.d.x)) ^ vec2<i32>(arg_0.c, 1i)), !arg_0.d);
    global0 = array<vec2<i32>, 4>();
    let var_2 = arg_0;
    return firstTrailingBit(var_0.yxz);
}

fn func_2() -> Struct_3 {
    var var_0 = vec3<u32>(~(~0u), ~_wgslsmith_clamp_u32(~28039u, 14198u, 0u), 35197u);
    var_0 = ~(func_3(Struct_3(Struct_2(vec2<f32>(625f, global2[_wgslsmith_index_u32(1u, 28u)]), Struct_1(133337u, vec3<f32>(global2[_wgslsmith_index_u32(1u, 28u)], 647f, -1000f), -914f, vec2<i32>(-15771i, 0i), global1.x)), 603f, u_input.a.x, true), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(1u, 28u)], _wgslsmith_f_op_f32(select(-1152f, -892f, global1.x))), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(104f, global2[_wgslsmith_index_u32(4294967295u, 28u)]) * vec2<f32>(global2[_wgslsmith_index_u32(var_0.x, 28u)], 729f)), Struct_1(48953u, vec3<f32>(-1000f, global2[_wgslsmith_index_u32(4294967295u, 28u)], -776f), global2[_wgslsmith_index_u32(3075u, 28u)], vec2<i32>(-43573i, u_input.a.x), false))) ^ reverseBits(~(~vec3<u32>(19438u, 11978u, var_0.x))));
    var var_1 = _wgslsmith_add_u32(~(~var_0.x), abs(var_0.x));
    let var_2 = !(select(true, select(false, global1.x, true), global1.x) == global1.x);
    var var_3 = -628f;
    return Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(var_0.x, 28u)], global2[_wgslsmith_index_u32(~var_0.x, 28u)])), Struct_1(var_0.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(339f, 1413f, 927f))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-749f, 1259f, 1000f), vec3<f32>(-441f, global2[_wgslsmith_index_u32(1u, 28u)], 1128f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1577f)), global2[_wgslsmith_index_u32(var_0.x, 28u)]), select(u_input.a.zx, ~u_input.a.xy, select(vec2<bool>(global1.x, true), vec2<bool>(var_2, var_2), global1.x)), !all(vec2<bool>(var_2, var_2)))), -449f, 22299i, var_2);
}

fn func_4(arg_0: Struct_3) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(arg_0.a.b.a, 28u)], arg_0.a.a.x, global2[_wgslsmith_index_u32(arg_0.a.b.a, 28u)], 603f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-551f, global2[_wgslsmith_index_u32(arg_0.a.b.a, 28u)], -689f, 356f)))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(123f, 1634f, arg_0.a.b.c, 403f)))))))));
}

fn func_1() -> StorageBuffer {
    global2 = array<f32, 28>();
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-2920f, global2[_wgslsmith_index_u32(reverseBits(select(~17662u, 37460u, -615f >= global2[_wgslsmith_index_u32(38840u, 28u)])), 28u)], -1683f, global2[_wgslsmith_index_u32(39239u, 28u)]) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(37540u, 28u)], global2[_wgslsmith_index_u32(49403u, 28u)], global2[_wgslsmith_index_u32(13024u, 28u)], global2[_wgslsmith_index_u32(1u, 28u)]) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2[_wgslsmith_index_u32(27566u, 28u)], 598f, global2[_wgslsmith_index_u32(12952u, 28u)], global2[_wgslsmith_index_u32(1u, 28u)]))))), _wgslsmith_f_op_vec4_f32(func_4(func_2())))));
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-720f, 864f)))), _wgslsmith_f_op_f32(-func_2().b), -1000f));
    var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-750f)), 697f, -318f))))));
    return StorageBuffer(_wgslsmith_mod_i32(u_input.a.x, abs(-u_input.a.x) >> (4294967295u % 32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.xzx)) * _wgslsmith_f_op_vec3_f32(-var_0.wzy)), _wgslsmith_f_op_vec3_f32(max(var_0.yyw, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, global2[_wgslsmith_index_u32(23823u, 28u)]))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

