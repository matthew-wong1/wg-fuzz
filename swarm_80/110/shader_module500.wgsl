struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: u32,
    d: Struct_2,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<i32, 3> = array<i32, 3>(0i, 57568i, 0i);

var<private> global2: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(2147483647i, -1i), vec2<i32>(-1i, -10189i), vec2<i32>(29676i, 16848i), vec2<i32>(2147483647i, 0i), vec2<i32>(52356i, -1i), vec2<i32>(-7374i, 11415i), vec2<i32>(-1i, 0i), vec2<i32>(0i, 1i));

var<private> global3: array<f32, 26> = array<f32, 26>(1000f, -745f, 929f, 536f, -213f, -552f, 501f, 1482f, -143f, 374f, 1999f, -251f, -798f, -446f, -243f, -522f, -523f, 1467f, 379f, 814f, 555f, -119f, -1330f, 1000f, -813f, 1000f);

var<private> global4: array<Struct_3, 13>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: bool) -> vec2<bool> {
    global4 = array<Struct_3, 13>();
    var var_0 = 34956i;
    let var_1 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(countOneBits(select(countOneBits(_wgslsmith_mult_u32(u_input.a.x, 4294967295u)), _wgslsmith_div_u32(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(2599u, 1u, u_input.a.x, u_input.a.x), vec4<u32>(0u, u_input.a.x, 62292u, 32805u))), true)), 28745u & u_input.a.x), 13u)];
    let var_2 = vec2<bool>(true, any(!(!(!vec2<bool>(false, arg_0)))));
    var var_3 = select(vec4<u32>(u_input.a.x, 47812u, 54288u, u_input.a.x), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 27107u, 49333u, 49314u) | vec4<u32>(0u, u_input.a.x, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x))), false || (!var_2.x & true));
    return !select(var_2, select(!vec2<bool>(var_2.x, false), select(var_2, select(var_2, var_2, arg_0), true), _wgslsmith_div_i32(var_1.c.a.x, 1i) == ~(-27056i)), !vec2<bool>(var_2.x, true));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: bool, arg_3: vec3<bool>) -> bool {
    let var_0 = ~_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(4294967295u ^ u_input.a.x, arg_1, 19889u >> (1u % 32u))), vec3<u32>(_wgslsmith_clamp_u32(~29389u, u_input.a.x, ~u_input.a.x), u_input.a.x, min(8880u, arg_1 << (arg_1 % 32u))));
    var var_1 = arg_0;
    global0 = _wgslsmith_clamp_vec2_i32(-((~global2[_wgslsmith_index_u32(arg_1, 8u)] << (var_0.yx % vec2<u32>(32u))) ^ _wgslsmith_clamp_vec2_i32(-u_input.b, firstTrailingBit(vec2<i32>(0i, 47897i)), u_input.b >> (vec2<u32>(4294967295u, var_0.x) % vec2<u32>(32u)))), vec2<i32>(_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(~(~u_input.a.x), 3u)], firstTrailingBit(var_1.a), _wgslsmith_mult_i32(1i, global1[_wgslsmith_index_u32(firstTrailingBit(60532u), 3u)])), countOneBits(0i)), u_input.b);
    global4 = array<Struct_3, 13>();
    let var_2 = global4[_wgslsmith_index_u32((countOneBits(_wgslsmith_add_u32(_wgslsmith_mod_u32(arg_1, 66362u), 1u)) << (arg_1 % 32u)) | var_0.x, 13u)];
    return !(any(!(!vec4<bool>(false, false, true, arg_3.x))) & any(select(vec2<bool>(true, true), arg_3.xz, !arg_3.yz)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: vec3<bool>) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(max(862f, 1344f));
    global1 = array<i32, 3>();
    global2 = array<vec2<i32>, 8>();
    global0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.x, 37059i), select(u_input.b, u_input.b | vec2<i32>(_wgslsmith_sub_i32(-27569i, global0.x), 39106i & global1[_wgslsmith_index_u32(0u, 3u)]), vec2<bool>(any(select(arg_3.zz, arg_3.zy, true)), arg_3.x)), -global2[_wgslsmith_index_u32(~(~u_input.a.x), 8u)]);
    global2 = array<vec2<i32>, 8>();
    return vec2<i32>(countOneBits(u_input.b.x), global0.x) & ~u_input.b;
}

fn func_1(arg_0: Struct_3) -> vec2<i32> {
    var var_0 = func_4(select(vec2<bool>(true, true), !func_2(true), vec2<bool>(true, true)), func_2(!(global3[_wgslsmith_index_u32(0u, 26u)] > global3[_wgslsmith_index_u32(1u, 26u)])), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-517f - 1023f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 26u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 26u)]), 302f), global3[_wgslsmith_index_u32(u_input.a.x, 26u)]), select(vec3<bool>(false, func_3(Struct_2(2147483647i), 1u, true, vec3<bool>(false, false, false)), select(false, true, false)), vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(false, false, true)))) << (~_wgslsmith_mult_vec2_u32(~vec2<u32>(50654u, u_input.a.x), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 4294967295u), vec3<u32>(0u, 4294967295u, u_input.a.x)), 4294967295u)) % vec2<u32>(32u));
    var var_1 = ~_wgslsmith_sub_vec3_u32(~(~vec3<u32>(1u, 30366u, u_input.a.x) << (~vec3<u32>(u_input.a.x, 22106u, u_input.a.x) % vec3<u32>(32u))), (select(vec3<u32>(119757u, u_input.a.x, 27560u), vec3<u32>(4294967295u, u_input.a.x, 0u), false) & _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(0u, u_input.a.x, 4294967295u))) << (_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), vec3<u32>(u_input.a.x, 1u, u_input.a.x)), vec3<u32>(53014u, 37098u, 93010u)) % vec3<u32>(32u)));
    global1 = array<i32, 3>();
    var var_2 = arg_0.c;
    let var_3 = -3326i;
    return vec2<i32>(11274i, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<i32>(abs(-2147483647i), _wgslsmith_div_i32(firstTrailingBit(firstLeadingBit(global0.x)), -2147483647i));
    var var_0 = _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(1u, 26u)]));
    global0 = -firstTrailingBit(reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(85847i, -2147483647i), vec2<i32>(u_input.b.x, 35326i))));
    global0 = u_input.b;
    var_0 = global3[_wgslsmith_index_u32(~abs(~firstLeadingBit(~u_input.a.x)), 26u)];
    let var_1 = ~func_1(global4[_wgslsmith_index_u32(~4294967295u, 13u)]);
    let var_2 = global4[_wgslsmith_index_u32(u_input.a.x, 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_add_u32(2179u | (1u & u_input.a.x), ~max(4294967295u, u_input.a.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32((4294967295u << (0u % 32u)) << (u_input.a.x % 32u), 26u)] + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1387f, global3[_wgslsmith_index_u32(u_input.a.x, 26u)]) + global3[_wgslsmith_index_u32(1u, 26u)])))), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(max(vec2<i32>(11985i, -1i), vec2<i32>(0i, -2147483647i)), vec2<i32>(var_2.b.a, 2147483647i)), ~(-global2[_wgslsmith_index_u32(1u, 8u)])), var_2.c.a.zz), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-928f, 1408f, 1242f, global3[_wgslsmith_index_u32(u_input.a.x, 26u)])))));
}

