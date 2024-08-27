struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 2>;

var<private> global1: array<Struct_1, 3>;

var<private> global2: array<Struct_1, 32>;

var<private> global3: vec4<u32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<f32> {
    global3 = vec4<u32>(u_input.d, global3.x ^ 1u, global3.x, _wgslsmith_add_u32(reverseBits(~_wgslsmith_div_u32(4294967295u, global3.x)), countOneBits(_wgslsmith_mod_u32(global3.x, global3.x) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.e.x), u_input.e.xy) % 32u))));
    let var_0 = vec2<u32>(countOneBits(min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, global3.x, 87732u), ~global3.wzy), abs(~0u))), 2985u);
    global2 = array<Struct_1, 32>();
    var var_1 = Struct_1(true && (~u_input.e.x < (~u_input.c ^ ~1u)), select(vec2<bool>(true, any(vec4<bool>(false, true, true, false))), vec2<bool>(!all(vec4<bool>(true, false, false, true)), all(vec3<bool>(true, true, true))), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true)))), -u_input.a.x);
    global1 = array<Struct_1, 3>();
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1687f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-164f))))), _wgslsmith_f_op_f32(min(1125f, _wgslsmith_f_op_f32(floor(-210f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(425f)) - _wgslsmith_f_op_f32(-3309f + -1000f))))), -359f);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<f32>) -> u32 {
    return 14733u;
}

fn func_2() -> bool {
    var var_0 = -vec3<i32>(u_input.b.x, u_input.a.x, u_input.b.x) ^ -u_input.a;
    var var_1 = global1[_wgslsmith_index_u32(u_input.e.x, 3u)];
    let var_2 = func_4(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-304f, -1577f, 151f), _wgslsmith_f_op_vec3_f32(vec3<f32>(893f, 1968f, -951f) * vec3<f32>(-814f, 1351f, 898f)), select(vec3<bool>(true, false, var_1.a), vec3<bool>(var_1.a, true, false), false)))))));
    var_0 = _wgslsmith_clamp_vec3_i32(u_input.a, countOneBits(select(u_input.a, -vec3<i32>(1i, 2147483647i, 37802i), false)), min(_wgslsmith_mult_vec3_i32(select(vec3<i32>(1i, var_0.x, u_input.a.x), u_input.a, true), _wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(0i, 1i, -127468i))), abs(vec3<i32>(2147483647i, -2147483647i, 2147483647i)))) >> (firstLeadingBit(u_input.e) % vec3<u32>(32u));
    var var_3 = ~(-u_input.a) >> (vec3<u32>(_wgslsmith_mult_u32(~global3.x << (10925u % 32u), 4294967295u), 23157u, _wgslsmith_mod_u32(38876u, firstTrailingBit(u_input.c))) % vec3<u32>(32u));
    return var_1.b.x;
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = global3.x;
    var var_1 = arg_1.wx;
    let var_2 = select(vec2<bool>(any(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), false), !vec2<bool>(func_2() && any(vec4<bool>(false, false, true, false)), any(vec2<bool>(true, true))), all(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)))));
    let var_3 = abs(arg_0);
    let var_4 = false;
    return Struct_1(var_4, var_2, u_input.a.x);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec2<f32>) -> i32 {
    var var_0 = global2[_wgslsmith_index_u32(u_input.d, 32u)];
    global2 = array<Struct_1, 32>();
    let var_1 = ~max(select(_wgslsmith_add_vec3_u32(~vec3<u32>(global3.x, global3.x, 33789u), max(vec3<u32>(6140u, global3.x, 27709u), vec3<u32>(global3.x, 4294967295u, 0u))), select(vec3<u32>(1u, 1u, 0u) | vec3<u32>(u_input.e.x, 1u, 12773u), u_input.e, true), arg_1), _wgslsmith_mod_vec3_u32(vec3<u32>(67266u, u_input.e.x, _wgslsmith_dot_vec2_u32(u_input.e.zy, u_input.e.zx)), ~vec3<u32>(0u, u_input.c, u_input.e.x)));
    var var_2 = ~4294967295u;
    return 0i;
}

fn func_6(arg_0: bool, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_1) -> f32 {
    var var_0 = arg_3.c ^ 54903i;
    let var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(~u_input.d, ~(~1u)), global3.xz), ~u_input.e.yz);
    global2 = array<Struct_1, 32>();
    var var_2 = global1[_wgslsmith_index_u32(max(u_input.d ^ var_1, 50123u), 3u)];
    let var_3 = Struct_1(!all(vec2<bool>(arg_3.a | true, true)), vec2<bool>(true, func_2()), _wgslsmith_mod_i32(_wgslsmith_div_i32(1i & arg_1, arg_3.c) | u_input.a.x, u_input.a.x));
    return -1276f;
}

fn func_7(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, 4294967295u), 3u)];
    return StorageBuffer(~_wgslsmith_sub_vec3_i32(u_input.a, u_input.a), -116f, -(_wgslsmith_mod_i32(var_0.c >> (global3.x % 32u), ~32182i) >> (~max(global3.x, 14880u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 3>();
    global1 = array<Struct_1, 3>();
    var var_0 = true;
    global1 = array<Struct_1, 3>();
    var var_1 = -583f;
    let var_2 = Struct_1(all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true)), vec2<bool>(true, ~4294967295u >= select(_wgslsmith_div_u32(global3.x, 21675u), _wgslsmith_mod_u32(global3.x, 0u), true)), 1i);
    let x = u_input.a;
    s_output = func_7(_wgslsmith_f_op_f32(func_6(true, func_5(Struct_1(var_2.b.x, var_2.b, 5657i), !vec3<bool>(true, false, var_2.b.x), func_1(global3.x, vec4<u32>(u_input.c, 103433u, global3.x, u_input.d), vec3<f32>(-1360f, -1429f, 276f)), _wgslsmith_div_vec2_f32(vec2<f32>(1000f, -109f), vec2<f32>(-312f, -1084f))) << (u_input.d % 32u), !vec4<bool>(!var_2.a, select(false, false, false), true, false), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global3.xx, global3.ww >> (_wgslsmith_sub_vec2_u32(global3.xz, vec2<u32>(2738u, global3.x)) % vec2<u32>(32u))), 32u)])), 18472u, Struct_1(!(!var_2.b.x), vec2<bool>(var_2.b.x, false), u_input.a.x));
}

