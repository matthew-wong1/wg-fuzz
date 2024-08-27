struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<f32>,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<Struct_1, 1>;

var<private> global2: array<bool, 11>;

var<private> global3: Struct_2 = Struct_2(vec3<bool>(false, true, false), vec3<i32>(19627i, 10507i, -1i), vec4<f32>(148f, 1000f, 993f, -498f));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec2<f32>) -> bool {
    var var_0 = Struct_2(vec3<bool>(global2[_wgslsmith_index_u32(firstTrailingBit(u_input.c), 11u)], !select(true, false, arg_0.x), false), vec3<i32>(_wgslsmith_mult_i32(1i, _wgslsmith_div_i32(~arg_1.x, arg_1.x)), u_input.a.x, 16538i), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.c) + global3.c))));
    let var_1 = Struct_1(false, 15743i, vec4<f32>(arg_2.x, _wgslsmith_div_f32(-1417f, _wgslsmith_f_op_f32(step(960f, _wgslsmith_f_op_f32(select(global3.c.x, 1319f, global3.a.x))))), _wgslsmith_f_op_f32(-global3.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1634f)))), global3.a.xx, select(vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, var_0.a.x), global3.a.zx)), global3.a.x != (-1209f < var_0.c.x)), select(var_0.a.yz, !(!arg_0.wy), vec2<bool>(var_0.a.x, !global2[_wgslsmith_index_u32(8170u, 11u)])), arg_0.wy));
    global2 = array<bool, 11>();
    let var_2 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(abs(firstLeadingBit(4294967295u)), 59409u, u_input.c), select(~vec3<u32>(27205u, 29053u, u_input.c), ~countOneBits(vec3<u32>(u_input.c, 75071u, u_input.c)), true));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c.yyy * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1893f, -1868f, arg_2.x))))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-496f)), var_1.c.x, -350f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(var_1.c.wyy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.c.x, 249f, global3.c.x))))))));
    return var_1.a;
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = !(!all(vec4<bool>(true, func_3(vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(9228u, 11u)]), vec2<i32>(global3.b.x, 0i), vec2<f32>(global3.c.x, -311f)), true, global2[_wgslsmith_index_u32(~arg_0.x, 11u)])));
    var var_1 = Struct_2(!global3.a, u_input.b | (-min(u_input.b, u_input.b) & vec3<i32>(u_input.b.x, abs(u_input.b.x), _wgslsmith_add_i32(u_input.e.x, -2147483647i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global3.c.x + _wgslsmith_f_op_f32(round(-417f))), global3.c.x, _wgslsmith_f_op_f32(-1945f - _wgslsmith_f_op_f32(max(2008f, 564f))), _wgslsmith_div_f32(global3.c.x, _wgslsmith_f_op_f32(-global3.c.x))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.c.x))), global3.c.x, -326f, _wgslsmith_f_op_f32(-global3.c.x))));
    return Struct_2(select(!global3.a, !(!var_1.a), !global3.a), vec3<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(global3.b.x, -73407i, 11567i, global3.b.x)), vec4<i32>(var_1.b.x | global3.b.x, -global3.b.x, _wgslsmith_mult_i32(-16495i, 1761i), var_1.b.x & u_input.e.x)), i32(-1i) * -33725i, -2147483647i), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2245f - var_1.c.x) + var_1.c.x)), var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c.x + 1200f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.x))));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.c.zzw));
    let var_1 = !global2[_wgslsmith_index_u32(u_input.c, 11u)];
    var var_2 = Struct_2(!global3.a, vec3<i32>(global3.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -1i), ~vec2<i32>(6373i, -1777i)), ~u_input.d.x) >> (reverseBits(vec3<u32>(~u_input.c, _wgslsmith_mod_u32(20043u, u_input.c), 4294967295u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -1897f) + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), -500f, 1272f)));
    var var_3 = func_2(vec3<u32>(36341u, _wgslsmith_sub_u32(1u, ~_wgslsmith_mod_u32(u_input.c, u_input.c)), ~53182u));
    var var_4 = Struct_2(global3.a, var_3.b, _wgslsmith_f_op_vec4_f32(-var_2.c));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 11>();
    let var_0 = func_1();
    var var_1 = vec4<u32>(var_0, 0u, ~u_input.c, 64437u);
    let var_2 = Struct_2(select(select(vec3<bool>(func_2(var_1.zww).a.x, any(vec2<bool>(true, true)), all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 11u)], false))), vec3<bool>(global3.a.x | global3.a.x, true && global2[_wgslsmith_index_u32(u_input.c, 11u)], global3.c.x < global3.c.x), func_2(~vec3<u32>(16210u, 0u, var_0)).a.x), !select(func_2(var_1.zzx).a, global3.a, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(54512u, 0u), 11u)]), global3.a), firstLeadingBit(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(global3.b.x, 5284i, -36896i)), -vec3<i32>(0i, 18897i, -2147483647i)), _wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(global3.b.x, -8984i, u_input.a.x)), u_input.b))), global3.c);
    global2 = array<bool, 11>();
    let var_3 = Struct_1(!var_2.a.x, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(var_2.b.xx, _wgslsmith_div_vec2_i32(vec2<i32>(-1i, var_2.b.x), u_input.b.yz)), ~global3.b.yy & u_input.e), min(~global3.b.yx, vec2<i32>(-41499i, u_input.b.x) ^ _wgslsmith_add_vec2_i32(vec2<i32>(-6359i, var_2.b.x), vec2<i32>(-2147483647i, u_input.b.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(global3.c.x, _wgslsmith_f_op_f32(-global3.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.c.x))), 943f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c.x - global3.c.x)))), var_2.a.xz, select(!select(!var_2.a.zy, vec2<bool>(global3.a.x, false), !var_2.a.xx), select(global3.a.zy, var_2.a.zy, vec2<bool>(true, !var_2.a.x)), !(false || global3.a.x)));
    var var_4 = 576f;
    var var_5 = _wgslsmith_dot_vec2_u32(var_1.yy, (vec2<u32>(_wgslsmith_add_u32(1u, var_0), _wgslsmith_dot_vec4_u32(vec4<u32>(49995u, var_0, 16638u, 1u), vec4<u32>(var_0, 1u, 2139u, 1u))) << (_wgslsmith_mult_vec2_u32(min(var_1.yz, vec2<u32>(var_1.x, 1u)), abs(var_1.ww)) % vec2<u32>(32u))) << (min(~select(vec2<u32>(var_1.x, 44062u), vec2<u32>(15248u, 41813u), vec2<bool>(var_2.a.x, true)), ~abs(var_1.yw)) % vec2<u32>(32u)));
    let var_6 = vec3<bool>(false, true, false || (global2[_wgslsmith_index_u32(var_0, 11u)] && true));
    let x = u_input.a;
    s_output = StorageBuffer(-11870i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.c.x, 1689f))))), var_3.c.zz);
}

