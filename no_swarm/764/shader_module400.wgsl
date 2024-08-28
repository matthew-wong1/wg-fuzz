struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: vec4<f32> = vec4<f32>(368f, -1892f, 326f, 1070f);

var<private> global2: vec3<i32>;

var<private> global3: vec4<bool>;

var<private> global4: array<vec4<bool>, 25>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32) -> i32 {
    global2 = vec3<i32>(abs(arg_0), global2.x, ~firstLeadingBit(abs(arg_0) ^ -3156i));
    let var_0 = !any(global3.ww);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.yyy * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.wyy), _wgslsmith_div_vec3_f32(vec3<f32>(global1.x, global1.x, -321f), global1.xwy)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global1.zzz)) + global1.xzx))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(2958f, 337f), _wgslsmith_f_op_f32(trunc(1431f)), -1015f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -825f), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(select(-1208f, -515f, false))))) + global1.xzx));
    return abs(u_input.d);
}

fn func_2(arg_0: vec2<bool>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, global1.x, -504f, global1.x), vec4<f32>(-364f, 352f, global1.x, global1.x))))))));
    var var_1 = Struct_2(~global2.x, global0[_wgslsmith_index_u32(u_input.b.x, 28u)], ~vec3<i32>((global2.x >> (u_input.a % 32u)) & select(-44013i, global2.x, true), abs(_wgslsmith_sub_i32(0i, u_input.d)), ~1i));
    global2 = vec3<i32>(_wgslsmith_mult_i32(-func_3(5253i) | _wgslsmith_sub_i32(select(1i, var_1.a, arg_0.x), var_1.c.x), -(~select(var_1.b.c, u_input.d, arg_0.x))), -min(-_wgslsmith_mod_i32(var_1.c.x, 1i), _wgslsmith_mult_i32(-var_1.b.c, -1i)), abs(abs(-12784i)));
    let var_2 = _wgslsmith_add_u32(u_input.a, reverseBits(u_input.c.x));
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1201f, 317f))))), global1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global1.x)), -1627f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-209f, -335f)))) - _wgslsmith_f_op_f32(min(-787f, _wgslsmith_f_op_f32(-global1.x))))));
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_2) -> i32 {
    global3 = !global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(u_input.a, 4294967295u), ~(~reverseBits(4294967295u))), 25u)];
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_2(vec2<bool>(true, true)))))));
    var var_0 = ((9786i << (arg_2.x % 32u)) << (arg_2.x % 32u)) == _wgslsmith_mult_i32(u_input.d, _wgslsmith_mod_i32(u_input.d, -1i));
    var var_1 = vec4<i32>(~(~arg_3.a), global2.x, 2147483647i, _wgslsmith_sub_i32(16780i, ~_wgslsmith_sub_i32(countOneBits(2147483647i), global2.x)));
    let var_2 = global1.zw;
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.x | true;
    let var_1 = ~max(select(-vec4<i32>(2147483647i, -2147483647i, u_input.d, 26753i), vec4<i32>(_wgslsmith_mod_i32(u_input.d, u_input.d), -2147483647i, 1i, ~9590i), true), _wgslsmith_mult_vec4_i32(vec4<i32>(func_1(global3.yx, true, u_input.c.xz, Struct_2(global2.x, global0[_wgslsmith_index_u32(u_input.a, 28u)], vec3<i32>(-20233i, u_input.d, global2.x))), u_input.d, global2.x, global2.x), vec4<i32>(2147483647i, 0i, -15282i, 2147483647i) << (firstLeadingBit(vec4<u32>(351u, u_input.c.x, 0u, u_input.b.x)) % vec4<u32>(32u))));
    let var_2 = global3.x;
    global4 = array<vec4<bool>, 25>();
    var var_3 = vec3<bool>(all(!global4[_wgslsmith_index_u32(36240u, 25u)]), true, false);
    var var_4 = -var_1.x;
    var var_5 = global0[_wgslsmith_index_u32(u_input.a, 28u)];
    let var_6 = u_input.d;
    var var_7 = Struct_2(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-var_1.wyy, -(~var_1.wxy)), -var_1.x), Struct_1(global3.zyw, (all(global4[_wgslsmith_index_u32(u_input.b.x, 25u)]) && (0u < u_input.a)) || var_5.b, u_input.d), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-817i, var_5.c, -33133i), vec3<i32>(u_input.d, u_input.d, 0i)) ^ vec3<i32>(u_input.d, var_5.c, 0i), vec3<i32>(reverseBits(var_6), -15722i, -u_input.d), ~abs(var_1.zwy)), var_1.yzw));
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, 1112u, 119692u, _wgslsmith_f_op_f32(exp2(global1.x)));
}

