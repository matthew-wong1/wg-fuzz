struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<bool>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

var<private> global1: vec2<bool>;

var<private> global2: vec3<bool> = vec3<bool>(false, false, true);

var<private> global3: array<Struct_2, 27>;

var<private> global4: array<i32, 32>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec3<bool>) -> bool {
    var var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_f32(425f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(816f - _wgslsmith_f_op_f32(-302f + 982f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1699f))))));
    global3 = array<Struct_2, 27>();
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(225f, -136f, -1902f, 596f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1457f, 1000f, 996f, -112f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(406f, -1895f, 1411f, 1164f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-1928f, -716f)), -359f, -256f, 1f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-523f, -634f, -885f, -156f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-189f, -2200f, -849f, 539f) * vec4<f32>(726f, 1238f, 1226f, -1230f)))))));
    var var_3 = global3[_wgslsmith_index_u32(28375u, 27u)];
    return true;
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> vec4<f32> {
    var var_0 = any(vec3<bool>(arg_0, select(_wgslsmith_sub_u32(u_input.d.x, global0[_wgslsmith_index_u32(0u, 19u)]), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(31286u, 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)]), arg_0) < global0[_wgslsmith_index_u32(~1u, 19u)], any(vec3<bool>(true, true, global2.x))));
    global0 = array<u32, 19>();
    var_0 = !any(!global2.xx);
    global2 = !vec3<bool>(true, func_3(arg_1.x, Struct_1(select(vec4<bool>(global2.x, true, true, arg_0), vec4<bool>(true, false, arg_0, arg_0), arg_0), !arg_0, select(vec4<bool>(false, global1.x, true, true), vec4<bool>(arg_0, arg_0, global2.x, arg_0), vec4<bool>(arg_0, false, global1.x, global1.x)), global2.x, countOneBits(global0[_wgslsmith_index_u32(0u, 19u)])), Struct_4(Struct_3(-15259i)), !select(vec3<bool>(global1.x, arg_0, true), vec3<bool>(global1.x, false, false), vec3<bool>(false, true, true))), min(_wgslsmith_dot_vec2_i32(u_input.c.xy, vec2<i32>(global4[_wgslsmith_index_u32(1u, 32u)], global4[_wgslsmith_index_u32(15612u, 32u)])), u_input.c.x ^ -45987i) != global4[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(u_input.b, 0u)), 32u)]);
    var var_1 = ~_wgslsmith_clamp_vec2_u32(u_input.a.ww, reverseBits(firstTrailingBit(u_input.d.xy)) >> (vec2<u32>(_wgslsmith_add_u32(u_input.d.x, u_input.d.x), _wgslsmith_add_u32(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 19u)])) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, ~u_input.d.x), u_input.d.zz));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-324f, 1244f, -1300f, 1372f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-252f, -111f, 1419f, -282f))), select(true, true, global2.x))), vec4<f32>(_wgslsmith_f_op_f32(step(656f, 670f)), -118f, _wgslsmith_f_op_f32(sign(-156f)), _wgslsmith_div_f32(503f, 895f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(441f, -1039f, -215f, 1147f))))));
}

fn func_1(arg_0: u32, arg_1: vec4<bool>) -> vec3<i32> {
    let var_0 = _wgslsmith_mod_vec3_i32(-u_input.c, u_input.c);
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1119f, -366f, -334f, -953f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-320f, -1411f, 165f, 1862f)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1495f, -446f, 251f, 1000f))), _wgslsmith_f_op_vec4_f32(func_2(any(arg_1.xy), select(vec2<i32>(u_input.c.x, 31245i), var_0.yy, global1.x)))))));
    let var_2 = select(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(1i, var_0.x, -2748i, u_input.c.x) & vec4<i32>(u_input.c.x, -48499i, -32563i, global4[_wgslsmith_index_u32(16592u, 32u)]), countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(10045i, var_0.x, -2147483647i, 25192i), vec4<i32>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 19u)], 32u)], global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1627u, 19u)], 32u)], global4[_wgslsmith_index_u32(arg_0, 32u)], u_input.c.x))), firstLeadingBit(-vec4<i32>(-2147483647i, -2147483647i, u_input.c.x, u_input.c.x))), ~vec4<i32>(33683i, 1i, -1i, abs(global4[_wgslsmith_index_u32(arg_0, 32u)]))), ~(vec4<i32>(-1i) * -vec4<i32>(22408i, -6815i, global4[_wgslsmith_index_u32(arg_0, 32u)], -19646i)) << ((max(firstTrailingBit(u_input.a), u_input.a) >> (abs(u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u)), select(arg_1, vec4<bool>(var_1.b.x >= 288f, all(vec3<bool>(arg_1.x, global1.x, true)), all(vec4<bool>(global2.x, global2.x, arg_1.x, arg_1.x)), true), !(all(arg_1.xyx) & global2.x)));
    let var_3 = global3[_wgslsmith_index_u32(33750u, 27u)];
    let var_4 = _wgslsmith_mod_vec3_u32(u_input.a.zwx | ~abs(max(vec3<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 19u)], 66175u), u_input.d)), u_input.a.xyz >> (~_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.xyw, u_input.d), u_input.a.yzz) % vec3<u32>(32u)));
    return _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_2.x, u_input.c.x, var_0.x) | firstTrailingBit(global4[_wgslsmith_index_u32(u_input.a.x, 32u)]), -global4[_wgslsmith_index_u32(25258u, 32u)]), select(~u_input.c.x, -global4[_wgslsmith_index_u32(firstTrailingBit(var_4.x), 32u)], func_3(_wgslsmith_mod_i32(var_2.x, -31291i), Struct_1(arg_1, global2.x, vec4<bool>(arg_1.x, false, arg_1.x, global2.x), global1.x, 1u), Struct_4(Struct_3(global4[_wgslsmith_index_u32(var_4.x, 32u)])), arg_1.ywx)), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_2.x) | var_2.zx, var_2.xw), var_2.x)), -var_2.ywz & var_2.xwz);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<bool>(global1.x, _wgslsmith_sub_i32(-2147483647i, max(-2147483647i, ~17563i)) > _wgslsmith_dot_vec3_i32(func_1(abs(10998u), !vec4<bool>(false, true, global1.x, global2.x)), abs(max(vec3<i32>(1i, -8463i, -2147483647i), u_input.c))));
    var var_0 = vec3<bool>(false, true, global2.x);
    var var_1 = Struct_4(Struct_3(_wgslsmith_mod_i32(abs(global4[_wgslsmith_index_u32(u_input.b, 32u)] ^ global4[_wgslsmith_index_u32(4294967295u, 32u)]), global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(66602u, 19u)], 32u)])));
    let var_2 = Struct_3(-18373i);
    var var_3 = Struct_1(!vec4<bool>(all(global2.zx), var_0.x, global1.x, true), all(select(select(vec2<bool>(false, global1.x), vec2<bool>(true, true), vec2<bool>(false, var_0.x)), vec2<bool>(any(vec4<bool>(true, var_0.x, global2.x, global1.x)), true), any(!vec4<bool>(global1.x, false, true, true)))), !select(!select(vec4<bool>(false, true, var_0.x, false), vec4<bool>(false, false, global2.x, false), vec4<bool>(true, false, true, false)), vec4<bool>(!global1.x, global2.x, var_0.x, all(global2.zx)), true), true && !(!(!global2.x)), u_input.a.x);
    global2 = var_3.a.zxz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(0u, var_3.e, u_input.d.x), var_2.a);
}

