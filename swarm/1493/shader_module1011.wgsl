struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<u32>, 18>;

var<private> global2: u32;

var<private> global3: array<f32, 2>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: bool) -> vec2<bool> {
    global0 = Struct_1(!select(global0.b, vec3<bool>(all(global0.b.xy), all(global0.a.yy), global0.a.x), vec3<bool>(true, true, true)), !(!vec3<bool>(select(global0.a.x, false, false), global0.a.x, any(global0.a.xx))), _wgslsmith_mod_vec3_u32(~u_input.a.xyy, u_input.a.yxw), _wgslsmith_add_vec4_u32(vec4<u32>(~abs(u_input.a.x), _wgslsmith_mult_u32(4294967295u, u_input.a.x) | arg_2.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.zw, global0.d.yx), vec2<u32>(4294967295u, 15610u)), global0.d.x), select(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.d.x, global0.e.x), vec2<u32>(global0.d.x, arg_2.x)), arg_2.x & u_input.a.x, 17315u, 4294967295u), ~vec4<u32>(arg_2.x, 1u, 18958u, 12481u), vec4<bool>(global0.b.x, global0.b.x || arg_3, u_input.a.x > 4294967295u, arg_3))), vec4<u32>(39228u, global0.d.x & global0.c.x, global0.d.x, ~72326u));
    global1 = array<vec4<u32>, 18>();
    global0 = Struct_1(!(!(!select(global0.a, global0.a, global0.b))), global0.a, _wgslsmith_mod_vec3_u32(vec3<u32>(reverseBits(arg_2.x), _wgslsmith_sub_u32(~1u, _wgslsmith_add_u32(32640u, 49611u)), 56416u), _wgslsmith_div_vec3_u32(vec3<u32>(arg_1.x, arg_2.x, 1u) | (vec3<u32>(arg_1.x, u_input.a.x, global0.c.x) ^ u_input.a.zzx), max(u_input.a.wxy << (vec3<u32>(u_input.a.x, 1u, 1u) % vec3<u32>(32u)), vec3<u32>(u_input.a.x, 1u, 1u)))), vec4<u32>(firstTrailingBit(u_input.a.x), arg_1.x, 47668u, 1u), ~u_input.a);
    let var_0 = Struct_1(select(vec3<bool>(select(false, all(global0.b.zx), true), !(!arg_3), any(global0.b.zy)), !select(vec3<bool>(arg_3, arg_3, true), select(vec3<bool>(arg_3, true, true), global0.a, global0.b), true), !(!(!arg_3))), select(global0.a, vec3<bool>(all(global0.a), !global0.b.x, true), vec3<bool>(true, all(select(vec3<bool>(false, arg_3, arg_3), global0.b, vec3<bool>(false, global0.a.x, global0.b.x))), all(select(vec3<bool>(arg_3, false, arg_3), vec3<bool>(false, global0.b.x, false), true)))), ~arg_1.zxy, ~global0.d << (~global1[_wgslsmith_index_u32(arg_1.x, 18u)] % vec4<u32>(32u)), u_input.a);
    return vec2<bool>((any(select(global0.b.zx, global0.a.xy, false)) || all(!vec4<bool>(global0.a.x, arg_3, false, true))) && true, true);
}

fn func_2() -> vec2<bool> {
    let var_0 = func_3(global3[_wgslsmith_index_u32(u_input.a.x, 2u)], ~vec4<u32>(global0.c.x, 4294967295u, 4678u, ~12657u), firstLeadingBit(vec2<u32>(~(1u >> (global0.e.x % 32u)), global0.c.x)), all(vec4<bool>(false, !global0.a.x, global0.b.x, _wgslsmith_f_op_f32(min(1040f, 1225f)) == _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global0.e.x, 2u)] * global3[_wgslsmith_index_u32(1u, 2u)]))));
    let var_1 = -2147483647i == u_input.c;
    let var_2 = !vec2<bool>(var_0.x & any(!vec4<bool>(false, true, global0.a.x, true)), var_1);
    let var_3 = _wgslsmith_dot_vec2_u32(~u_input.a.yx, ~vec2<u32>(57222u, 423u));
    var var_4 = abs(vec4<i32>(u_input.b, -(~(~7099i)), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(u_input.c, u_input.b), _wgslsmith_clamp_i32(u_input.c, 0i, -39565i), u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(1i, u_input.b))), ~vec4<i32>(1i, u_input.b, -14058i, -2147483647i)), 0i));
    return vec2<bool>(var_0.x, abs(_wgslsmith_div_u32(~var_3, 4953u)) != reverseBits(_wgslsmith_clamp_u32(var_3, global0.e.x, var_3) & u_input.a.x));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> i32 {
    var var_0 = !func_2();
    var var_1 = Struct_1(global0.b, select(!arg_1.a, !vec3<bool>(arg_1.b.x, global0.b.x, true), !select(global0.a, vec3<bool>(true, arg_1.a.x, arg_1.b.x), !global0.a)), ~max(vec3<u32>(1u, select(0u, 61048u, true), global0.d.x), vec3<u32>(max(16739u, arg_2), 4294967295u, 46252u)), global1[_wgslsmith_index_u32(arg_2, 18u)], ~global0.e >> (vec4<u32>(reverseBits(~global0.d.x), 1u, global0.e.x, 1u) % vec4<u32>(32u)));
    let var_2 = ~vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a.xy, arg_1.c.zz) >> (arg_2 % 32u), ~45183u), 31386u);
    let var_3 = arg_1;
    var var_4 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(~firstLeadingBit(_wgslsmith_div_u32(u_input.a.x, var_2.x)), 60572u), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(firstLeadingBit(global1[_wgslsmith_index_u32(u_input.a.x, 18u)]) | arg_1.e, var_1.e & _wgslsmith_div_vec4_u32(vec4<u32>(53284u, var_2.x, var_3.c.x, 5723u), vec4<u32>(31399u, 61012u, 4294967295u, 1u))), firstLeadingBit(~vec4<u32>(0u, 4294967295u, var_3.d.x, 76493u))));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 2>();
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(-903f, global3[_wgslsmith_index_u32(52342u, 2u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1557f * 1177f) * _wgslsmith_div_f32(global3[_wgslsmith_index_u32(1u, 2u)], 1000f)), _wgslsmith_f_op_f32(floor(-413f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 2u)], global3[_wgslsmith_index_u32(u_input.a.x, 2u)])) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(global0.e.x, 2u)], -1240f))))));
    global2 = 1u;
    let var_1 = vec4<i32>(_wgslsmith_add_i32(firstTrailingBit(-8270i), -_wgslsmith_mult_i32(u_input.b, u_input.b) & abs(-1i)), -func_1(u_input.a.x, Struct_1(!global0.b, global0.a, reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, global0.d.x)), global0.e, max(vec4<u32>(global0.c.x, 2369u, u_input.a.x, global0.e.x), global0.d)), ~_wgslsmith_dot_vec4_u32(u_input.a, global1[_wgslsmith_index_u32(16016u, 18u)]), ~(~0i)), 2147483647i, _wgslsmith_div_i32(-14715i, 1i));
    let var_2 = global0.a;
    let var_3 = Struct_1(!global0.b, select(select(select(!vec3<bool>(global0.a.x, true, true), select(vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(true, false, global0.b.x), true), global0.a), global0.b, all(vec3<bool>(true, false, var_2.x))), select(global0.a, global0.a, !global0.b), false), global0.c, vec4<u32>(_wgslsmith_clamp_u32(~(~u_input.a.x), min(global0.c.x ^ u_input.a.x, 4294967295u), ~(~global0.c.x)), ~(_wgslsmith_clamp_u32(global0.c.x, global0.c.x, 0u) >> (_wgslsmith_dot_vec3_u32(global0.c, global0.e.zww) % 32u)), max(1u, _wgslsmith_mod_u32(19401u, ~0u)), _wgslsmith_dot_vec4_u32(u_input.a ^ global0.d, vec4<u32>(min(1u, 1u), ~38024u, reverseBits(u_input.a.x), global0.d.x))), ~abs(u_input.a));
    var var_4 = var_3;
    var var_5 = var_3;
    let var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-1271f + -976f))), var_0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1361f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(940f))))) * 506f);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.e & var_4.d, _wgslsmith_clamp_vec2_i32(var_1.yx, var_1.yz, var_1.xy), var_1, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_div_u32(var_5.e.x, var_3.d.x), 2u)]) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, -294f, false)) - 395f)), global3[_wgslsmith_index_u32(4294967295u, 2u)], _wgslsmith_f_op_f32(1231f * -1000f)));
}

