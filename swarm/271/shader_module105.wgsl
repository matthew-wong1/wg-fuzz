struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: f32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(1i, -24336i, -1i, -1i), vec2<bool>(false, false));

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: array<i32, 29>;

var<private> global4: vec4<bool>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: bool) -> f32 {
    var var_0 = !select(select(vec2<bool>(true, !arg_2), vec2<bool>(arg_1.x, 26210u < u_input.a), global1.b), !vec2<bool>(global1.b.x, all(global0.b)), select(vec2<bool>(any(vec2<bool>(true, arg_0)), true), arg_1, !(!arg_1)));
    let var_1 = Struct_1(min(-vec4<i32>(global1.a.x >> (1u % 32u), global3[_wgslsmith_index_u32(u_input.a, 29u)], u_input.b, global1.a.x), global0.a), !vec2<bool>(true, global0.b.x));
    let var_2 = ~_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(4294967295u, u_input.a, 1u, u_input.a) & vec4<u32>(0u, 0u, u_input.a, u_input.a)), min(abs(~vec4<u32>(u_input.a, u_input.a, 52330u, u_input.a)), ~(vec4<u32>(4294967295u, 16163u, u_input.a, u_input.a) >> (vec4<u32>(u_input.a, 29873u, u_input.a, 0u) % vec4<u32>(32u)))), ~(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))));
    let var_3 = vec4<i32>(-2609i & _wgslsmith_mod_i32(firstTrailingBit(countOneBits(global3[_wgslsmith_index_u32(1u, 29u)])), -u_input.b), 1i, 25580i, _wgslsmith_mod_i32(var_1.a.x, -_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(global0.a.wz, vec2<i32>(global0.a.x, 11216i)), abs(global2.a.wz))));
    let var_4 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-33364i, 0i, var_1.a.x), global0.a.wyz, _wgslsmith_mod_vec3_i32(vec3<i32>(abs(global0.a.x << (0u % 32u)), i32(-1i) * -var_3.x, _wgslsmith_sub_i32(4770i, -5412i)), firstLeadingBit(-vec3<i32>(u_input.b, var_3.x, global3[_wgslsmith_index_u32(4294967295u, 29u)]) << (max(vec3<u32>(0u, 0u, u_input.a), var_2.xwz) % vec3<u32>(32u)))));
    return _wgslsmith_div_f32(-1569f, 566f);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(global2.a, vec2<bool>(true, true));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1119f)), _wgslsmith_f_op_f32(func_3(global0.b.x, vec2<bool>(true, global1.b.x), false))) * -859f), -1229f)), _wgslsmith_f_op_f32(428f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-188f, _wgslsmith_f_op_f32(-873f + -130f), any(vec4<bool>(global4.x, false, var_0.b.x, global4.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(424f, 377f))))))));
    global2 = Struct_1(global1.a, select(vec2<bool>(global2.b.x, true), select(vec2<bool>(true, select(var_0.b.x, true, global0.b.x)), global4.yx, true), select(!select(global1.b, global4.yy, global1.b), select(vec2<bool>(var_0.b.x, false), !vec2<bool>(var_0.b.x, true), !global2.b.x), vec2<bool>(true, true))));
    global2 = Struct_1(vec4<i32>(reverseBits(1i), firstTrailingBit(_wgslsmith_mult_i32(~global0.a.x, global2.a.x)), 6113i, 11178i), vec2<bool>(all(vec4<bool>(all(vec2<bool>(global2.b.x, global0.b.x)), !global0.b.x, true, !var_0.b.x)), any(global1.b)));
    global2 = Struct_1(select(select(vec4<i32>(-var_0.a.x, 6716i, ~global3[_wgslsmith_index_u32(1u, 29u)], -34135i), _wgslsmith_mod_vec4_i32(global2.a, max(vec4<i32>(global3[_wgslsmith_index_u32(u_input.a, 29u)], 31360i, -15885i, 31633i), vec4<i32>(u_input.b, global0.a.x, 0i, 36734i))), !select(vec4<bool>(global2.b.x, false, global2.b.x, false), vec4<bool>(var_0.b.x, global2.b.x, true, true), vec4<bool>(true, global1.b.x, var_0.b.x, global2.b.x))), vec4<i32>(0i, i32(-1i) * -59356i, -reverseBits(-12304i), -11246i ^ _wgslsmith_clamp_i32(u_input.b, global1.a.x, global0.a.x)), select(select(select(vec4<bool>(true, true, global4.x, global1.b.x), vec4<bool>(false, false, var_0.b.x, true), false), select(vec4<bool>(global0.b.x, true, true, global4.x), vec4<bool>(true, global2.b.x, false, var_0.b.x), vec4<bool>(global1.b.x, var_0.b.x, global0.b.x, false)), any(global4.yww)), select(vec4<bool>(var_0.b.x, false, false, false), vec4<bool>(true, global0.b.x, true, false), select(global4.x, global0.b.x, true)), any(!vec4<bool>(global0.b.x, true, global4.x, true)))), vec2<bool>(!global1.b.x, all(global4.zy)));
    return Struct_2(!select(select(vec4<bool>(global4.x, global0.b.x, true, global2.b.x), !vec4<bool>(false, global4.x, true, true), vec4<bool>(true, false, global1.b.x, global2.b.x)), select(!vec4<bool>(global0.b.x, var_0.b.x, global1.b.x, var_0.b.x), vec4<bool>(var_0.b.x, false, true, global0.b.x), var_0.b.x), vec4<bool>(any(global2.b), any(vec4<bool>(false, true, var_0.b.x, var_0.b.x)), global2.b.x | false, false)), firstLeadingBit(~u_input.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(500f))), -901f)), -380f)), !all(select(select(vec4<bool>(false, false, global1.b.x, global0.b.x), vec4<bool>(global2.b.x, false, false, false), false), select(vec4<bool>(true, true, global0.b.x, false), vec4<bool>(true, global1.b.x, false, true), false), vec4<bool>(global4.x, global4.x, false, global1.b.x))), global1.a.x);
}

fn func_1(arg_0: vec3<u32>) -> vec4<i32> {
    var var_0 = Struct_1(~(-(~global1.a)), select(select(!(!vec2<bool>(global0.b.x, global0.b.x)), global1.b, !select(global2.b, vec2<bool>(true, true), true)), vec2<bool>(true, !global4.x), !global4.x));
    var var_1 = func_2();
    var var_2 = _wgslsmith_div_i32(var_1.e, var_0.a.x);
    let var_3 = Struct_1(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(global2.a, ~_wgslsmith_sub_vec4_i32(global2.a, global0.a)), global0.a), global2.b);
    var var_4 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_1.c, -101f)), _wgslsmith_div_f32(1412f, var_1.c))), var_1.c))));
    return ~(~global2.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 29>();
    var var_0 = Struct_1(global0.a, global2.b);
    var var_1 = Struct_1(min(firstLeadingBit(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.b, u_input.b, 2693i, -1i)), vec4<i32>(-1i, 4142i, 9011i, var_0.a.x))), max(~(vec4<i32>(-33761i, 19094i, 2147483647i, global1.a.x) & global1.a), -func_1(vec3<u32>(u_input.a, 0u, u_input.a)))), !(!var_0.b));
    global4 = func_2().a;
    var var_2 = Struct_1(vec4<i32>(-1i, global3[_wgslsmith_index_u32(u_input.a, 29u)], ~min(i32(-1i) * -1i, 2372i), ~global3[_wgslsmith_index_u32(~u_input.a, 29u)]), !vec2<bool>(all(!vec4<bool>(global4.x, var_0.b.x, var_0.b.x, true)), false));
    var var_3 = vec4<u32>(~u_input.a, ~49565u, 53386u << (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 26281u), ~vec2<u32>(30085u, 38954u)), u_input.a & 1u) % 32u), max(_wgslsmith_div_u32(firstLeadingBit(_wgslsmith_sub_u32(u_input.a, u_input.a)), ~1u), countOneBits(firstLeadingBit(u_input.a)) | func_2().b));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~global1.a.x, global1.a.x);
}

