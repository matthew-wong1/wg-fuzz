struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<u32>;

var<private> global2: array<vec3<i32>, 14>;

var<private> global3: array<vec4<u32>, 17> = array<vec4<u32>, 17>(vec4<u32>(1u, 4294967295u, 448u, 4294967295u), vec4<u32>(2300u, 86389u, 36723u, 1u), vec4<u32>(12520u, 4294967295u, 9493u, 4294967295u), vec4<u32>(29656u, 58913u, 25490u, 0u), vec4<u32>(0u, 0u, 27148u, 31663u), vec4<u32>(53695u, 3036u, 44778u, 17797u), vec4<u32>(0u, 26045u, 38920u, 50410u), vec4<u32>(4294967295u, 0u, 20878u, 4294967295u), vec4<u32>(48992u, 12738u, 1u, 67609u), vec4<u32>(21199u, 28842u, 51685u, 1u), vec4<u32>(4294967295u, 12354u, 57821u, 36490u), vec4<u32>(1u, 5710u, 0u, 3195u), vec4<u32>(103042u, 0u, 2618u, 1u), vec4<u32>(4294967295u, 1u, 4930u, 28163u), vec4<u32>(4807u, 2094u, 613u, 27441u), vec4<u32>(0u, 104143u, 4294967295u, 81332u), vec4<u32>(61304u, 0u, 4294967295u, 4294967295u));

var<private> global4: array<Struct_1, 22>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: bool) -> u32 {
    var var_0 = arg_1.c;
    let var_1 = u_input.b.zzy;
    var_0 = false;
    let var_2 = abs(_wgslsmith_mod_vec2_i32(vec2<i32>(countOneBits(~(-14626i)), -51225i), vec2<i32>(u_input.b.x, max(-29211i, _wgslsmith_add_i32(u_input.b.x, -1i)))));
    global4 = array<Struct_1, 22>();
    return 65999u;
}

fn func_2() -> i32 {
    let var_0 = Struct_3(Struct_1(true, ~(~4294967295u), false, vec4<bool>(true, -u_input.b.x == 1i, all(vec2<bool>(false, false)), true), global1.x & _wgslsmith_mult_u32(func_3(461u, Struct_1(true, 56292u, false, vec4<bool>(true, true, false, true), 0u), vec3<f32>(225f, -1077f, 1427f), false), _wgslsmith_div_u32(global1.x, global1.x))), u_input.b.x, select(reverseBits(vec2<u32>(global1.x, 4294967295u)), reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(39945u, global1.x), vec2<u32>(68892u, global1.x))), vec2<bool>(true, all(vec2<bool>(false, true)))));
    let var_1 = Struct_2(min(vec3<i32>(~_wgslsmith_mult_i32(var_0.b, 5327i), -(~(-30287i)), _wgslsmith_div_i32(~2147483647i, 1i)), vec3<i32>(~_wgslsmith_mod_i32(var_0.b, var_0.b), firstLeadingBit(_wgslsmith_mod_i32(2147483647i, u_input.b.x)), i32(-1i) * -var_0.b)), select(!select(var_0.a.d.yy, !var_0.a.d.xy, select(var_0.a.d.xz, var_0.a.d.xw, vec2<bool>(var_0.a.d.x, false))), !select(select(vec2<bool>(var_0.a.d.x, var_0.a.d.x), vec2<bool>(true, var_0.a.d.x), var_0.a.a), vec2<bool>(true, true), !var_0.a.d.x), all(var_0.a.d.xyy)), vec3<u32>(global1.x, global1.x, ~79405u));
    return ~abs(countOneBits(1i));
}

fn func_1(arg_0: Struct_3) -> vec2<bool> {
    var var_0 = false;
    global2 = array<vec3<i32>, 14>();
    var var_1 = global4[_wgslsmith_index_u32(max(arg_0.c.x, ~global1.x), 22u)];
    let var_2 = select(_wgslsmith_add_vec2_i32(u_input.b.yw, _wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.a, u_input.b.x), vec2<i32>(0i, 1i), -u_input.b.yw)) & vec2<i32>(func_2() >> (0u % 32u), _wgslsmith_mod_i32(countOneBits(u_input.a), -2876i)), u_input.b.ww, false);
    global3 = array<vec4<u32>, 17>();
    return vec2<bool>(true, select(_wgslsmith_f_op_f32(select(-847f, -1489f, false)) > 1557f, true, 22407i > ((arg_0.b >> (arg_0.c.x % 32u)) << (1u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_sub_vec3_i32((u_input.b.zxz & _wgslsmith_add_vec3_i32(global2[_wgslsmith_index_u32(global1.x, 14u)], vec3<i32>(u_input.b.x, u_input.b.x, u_input.a))) >> (_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.x, 62887u, global1.x), vec3<u32>(global1.x, 66705u, global1.x), vec3<u32>(global1.x, global1.x, 0u)), vec3<u32>(6890u, global1.x, 23310u) ^ vec3<u32>(17133u, 80311u, 4294967295u)) % vec3<u32>(32u)), u_input.b.xyz), !(!(!func_1(Struct_3(Struct_1(true, 0u, false, vec4<bool>(true, true, true, true), global1.x), u_input.b.x, vec2<u32>(25134u, global1.x))))), vec3<u32>(~_wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(func_3(global1.x, global4[_wgslsmith_index_u32(global1.x, 22u)], vec3<f32>(-362f, -810f, 165f), false), 17u)], vec4<u32>(global1.x, 11434u, 1u, global1.x)), ~min(func_3(global1.x, global4[_wgslsmith_index_u32(4294967295u, 22u)], vec3<f32>(987f, -768f, 589f), false), ~global1.x), global1.x));
    global0 = ~(~(~40022u));
    let var_1 = var_0.b;
    let var_2 = Struct_2(u_input.b.www, func_1(Struct_3(global4[_wgslsmith_index_u32(~4294967295u, 22u)], _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(var_0.a, global2[_wgslsmith_index_u32(var_0.c.x, 14u)]), 33965i), vec2<u32>(countOneBits(var_0.c.x), global1.x))), vec3<u32>(var_0.c.x, _wgslsmith_add_u32(var_0.c.x >> (select(5584u, global1.x, false) % 32u), ~(~52573u)), var_0.c.x));
    global1 = _wgslsmith_mod_vec3_u32(var_0.c, abs(_wgslsmith_add_vec3_u32(vec3<u32>(global1.x, var_0.c.x, global1.x), vec3<u32>(var_2.c.x, global1.x, 18204u)) | var_0.c) >> (_wgslsmith_sub_vec3_u32(var_0.c, vec3<u32>(_wgslsmith_mult_u32(92258u, var_0.c.x), 1u & var_0.c.x, 4294967295u)) % vec3<u32>(32u)));
    global1 = ~firstTrailingBit(max(firstLeadingBit(abs(vec3<u32>(global1.x, 34208u, var_0.c.x))), vec3<u32>(abs(global1.x), 0u, _wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(0u, 17u)], vec4<u32>(var_0.c.x, var_2.c.x, var_0.c.x, var_2.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(min(var_2.a.x, ~var_2.a.x)), 5802u, vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-177f + _wgslsmith_f_op_f32(f32(-1f) * -1504f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-150f, -317f)) - -812f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1808f + 1604f)), 624f)));
}

