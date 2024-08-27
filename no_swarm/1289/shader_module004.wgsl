struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_2;

var<private> global2: Struct_1 = Struct_1(-8391i, vec3<f32>(-1000f, -559f, 251f), 4294967295u);

var<private> global3: Struct_2;

var<private> global4: array<Struct_2, 16>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> Struct_1 {
    return Struct_1(global2.a, global2.b, u_input.d);
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-657f - 1452f)))) - _wgslsmith_f_op_f32(f32(-1f) * -2083f));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-global2.b.x), Struct_1(arg_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-237f, _wgslsmith_f_op_f32(global0.x - arg_0.b.x), global2.b.x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global0.x, arg_0.b.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1977f, global2.b.x, global2.b.x)))), ~(~4294967295u)), 1319f, Struct_2(vec2<i32>(-1i, _wgslsmith_div_i32(-u_input.e, -u_input.b)), ~max(_wgslsmith_add_vec2_i32(global3.b, global1.b), -global3.b), !vec3<bool>(global3.c.x, global2.c != arg_0.c, !global3.c.x)), global4[_wgslsmith_index_u32(~(~(~6684u)), 16u)]);
    let var_2 = Struct_2(global3.b, vec2<i32>(25373i, _wgslsmith_div_i32(u_input.e, min(_wgslsmith_add_i32(global3.a.x, global1.b.x), 1i))), !(!select(select(global3.c, var_1.d.c, global1.c.x), global1.c, vec3<bool>(global3.c.x, global1.c.x, var_1.e.c.x))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -905f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.b.x))) * 1649f))));
    return reverseBits(u_input.a.zz);
}

fn func_4(arg_0: u32) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(-func_2().b);
    global1 = Struct_2(select(global3.a, global1.a, !any(!vec4<bool>(true, global1.c.x, global1.c.x, global3.c.x))), _wgslsmith_add_vec2_i32(vec2<i32>(global2.a, global2.a), select(global1.b << (u_input.a.zx % vec2<u32>(32u)), abs(global3.b), any(vec2<bool>(global1.c.x, false)))) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), select(global3.c, select(vec3<bool>(global3.c.x | global3.c.x, global3.c.x, true), vec3<bool>(any(vec4<bool>(false, true, global1.c.x, true)), true, true), true || !global3.c.x), vec3<bool>(any(global1.c.xy), (u_input.a.x == 4294967295u) || !global1.c.x, !global1.c.x)));
    return Struct_1(-16830i, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.b) - global2.b))), arg_0);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<i32>) -> vec3<u32> {
    var var_0 = func_4(~_wgslsmith_dot_vec2_u32(func_3(func_2()), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u), reverseBits(vec2<u32>(global2.c, u_input.a.x)))));
    var var_1 = ~(_wgslsmith_div_vec2_u32(~(~vec2<u32>(var_0.c, global2.c)), abs(select(u_input.a.zy, u_input.a.zz, global3.c.x))) & u_input.a.yy);
    let var_2 = u_input.a.yx;
    let var_3 = Struct_1(u_input.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(func_2().b, _wgslsmith_f_op_vec3_f32(global2.b - var_0.b)) + global2.b) + var_0.b), _wgslsmith_div_u32(~(~_wgslsmith_mod_u32(var_0.c, var_1.x)), ~countOneBits(4294967295u)));
    let var_4 = Struct_2(vec2<i32>(func_2().a, 26285i), _wgslsmith_mult_vec2_i32(abs(select(max(arg_1, global3.a), global3.a, true)), ~(_wgslsmith_mult_vec2_i32(global3.b, vec2<i32>(u_input.c, 16370i)) | vec2<i32>(12449i, arg_0.x))), select(select(vec3<bool>(true, true, !global3.c.x), !vec3<bool>(global1.c.x, global3.c.x, false), global3.c.x), vec3<bool>(_wgslsmith_div_i32(-2147483647i, -26085i) <= global1.a.x, all(select(global1.c.xy, vec2<bool>(global1.c.x, true), false)), true), global3.c.x && any(!vec2<bool>(true, global3.c.x))));
    return vec3<u32>(_wgslsmith_clamp_u32((53322u & (var_1.x << (0u % 32u))) & 0u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_1.x, var_1.x, 1u, 19086u), vec4<u32>(1u, 0u, 1u, global2.c), !var_4.c.x), vec4<u32>(select(25346u, 4294967295u, global3.c.x), ~65516u, global2.c, abs(4294967295u))), var_2.x), 73731u, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, global2.a, global1.b.x, global1.b.x) | vec4<i32>(-9699i, 23494i, -20117i, global2.a), vec4<i32>(global2.a | -1i, -global3.a.x, -17969i, ~1i)) << (_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, u_input.a.x), 1u >> (0u % 32u)), 31051u) % 32u), global2.b, global2.c);
    let var_0 = global0.x;
    var var_1 = !vec4<bool>(!global3.c.x, all(select(vec3<bool>(false, true, global1.c.x), vec3<bool>(global1.c.x, true, global1.c.x), global3.c)) && true, true, all(global3.c));
    let var_2 = _wgslsmith_add_vec3_u32(min(min(vec3<u32>(u_input.a.x, global2.c, 27985u), vec3<u32>(21000u, 4294967295u, global2.c)), vec3<u32>(global2.c, u_input.a.x, 12649u) >> (u_input.a % vec3<u32>(32u))) >> (~(~u_input.a) % vec3<u32>(32u)), u_input.a) & abs(~_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, u_input.a), func_1(vec3<i32>(u_input.c, 2147483647i, global1.b.x), vec2<i32>(7772i, 9869i))));
    let var_3 = (2147483647i | firstTrailingBit(select(global2.a, 1i, true))) >= global3.a.x;
    let var_4 = abs(u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~select(u_input.a, _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(46978u, u_input.d, 0u), vec3<u32>(var_4, var_2.x, global2.c)), u_input.a), select(select(global1.c, var_1.xyy, global1.c), select(global3.c, vec3<bool>(false, var_1.x, false), var_1.xyy), global3.c)), vec2<f32>(1113f, 2406f), ~4294967295u, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), func_4(u_input.d).b.x)), global0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(select(global2.b.x, global2.b.x, var_1.x)))), _wgslsmith_f_op_f32(f32(-1f) * -564f)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, 108f, -202f, -1810f))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-217f, global2.b.x, -574f, global2.b.x), vec4<f32>(global0.x, 814f, -2611f, -636f))))))));
}

