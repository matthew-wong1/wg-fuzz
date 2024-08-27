struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: array<vec3<bool>, 17>;

var<private> global2: array<Struct_2, 25>;

var<private> global3: array<u32, 8> = array<u32, 8>(4294967295u, 63845u, 43249u, 11686u, 41040u, 11145u, 17496u, 15604u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<i32>) -> f32 {
    let var_0 = Struct_4(arg_0.yz);
    var var_1 = Struct_3(Struct_2(Struct_1(arg_1.xx, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(620f * 1162f), _wgslsmith_f_op_f32(f32(-1f) * -805f))), false, -34394i), ~global3[_wgslsmith_index_u32(~(~global3[_wgslsmith_index_u32(38859u, 8u)]), 8u)]), arg_1, vec4<bool>(!any(!vec2<bool>(false, var_0.a.x)), true, !(!var_0.a.x), !arg_0.x));
    let var_2 = Struct_3(Struct_2(Struct_1(-(~vec2<i32>(-11728i, u_input.a)), _wgslsmith_div_f32(2509f, -1000f), false, var_1.b.x), global3[_wgslsmith_index_u32(var_1.a.b, 8u)]), arg_1, vec4<bool>(select(!(!var_0.a.x), _wgslsmith_f_op_f32(sign(605f)) <= _wgslsmith_f_op_f32(exp2(var_1.a.a.b)), true), all(arg_0), false, any(select(!var_0.a, !vec2<bool>(arg_0.x, true), var_1.c.x))));
    let var_3 = var_2;
    global2 = array<Struct_2, 25>();
    return var_3.a.a.b;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(sign(-869f));
    global1 = array<vec3<bool>, 17>();
    let var_1 = ~4294967295u;
    var var_2 = ~(~vec3<u32>(_wgslsmith_clamp_u32(58898u, 1u | global3[_wgslsmith_index_u32(67759u, 8u)], ~global3[_wgslsmith_index_u32(43610u, 8u)]), ~select(global3[_wgslsmith_index_u32(47326u, 8u)], global3[_wgslsmith_index_u32(0u, 8u)], false), _wgslsmith_dot_vec2_u32(vec2<u32>(23753u, 1u) ^ vec2<u32>(global3[_wgslsmith_index_u32(81085u, 8u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)]), ~vec2<u32>(4294967295u, 4499u))));
    var var_3 = Struct_1(vec2<i32>(0i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a ^ 0i, ~u_input.a), _wgslsmith_add_i32(u_input.a, _wgslsmith_mult_i32(u_input.a, u_input.a)))), 1229f, all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), false))), u_input.a);
    return Struct_1(vec2<i32>(18800i, u_input.a), _wgslsmith_f_op_f32(func_3(vec3<bool>(!var_3.c, true, true), vec4<i32>(-19423i, var_3.d, 18920i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_3.d, var_3.d, var_3.d), vec4<i32>(var_3.d, var_3.d, 29953i, u_input.a))) << (~(~vec4<u32>(var_2.x, var_1, 4294967295u, var_2.x)) % vec4<u32>(32u)))), any(vec4<bool>(false, var_3.c, var_3.c, all(!vec4<bool>(var_3.c, true, false, var_3.c)))), ~12333i);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> bool {
    var var_0 = select(select(-(u_input.a & u_input.a), u_input.a, false), firstTrailingBit(i32(-1i) * -(i32(-1i) * -2147483647i)), arg_0.c);
    let var_1 = func_2();
    global2 = array<Struct_2, 25>();
    let var_2 = -412f;
    global1 = array<vec3<bool>, 17>();
    return !var_1.c;
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(76005u, 17u)], vec4<i32>(-1i, 1i, -2147483647i, u_input.a)))), _wgslsmith_f_op_f32(func_2().b - -1000f))), _wgslsmith_f_op_f32(step(-1206f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(382f - 351f)))))));
    var var_1 = arg_0;
    var var_2 = global2[_wgslsmith_index_u32(41088u, 25u)];
    var var_3 = Struct_4(select(var_1.a, var_1.a, !(!(true && arg_0.a.x))));
    let var_4 = Struct_3(Struct_2(var_2.a, select(_wgslsmith_div_u32(4294967295u, var_2.b), global3[_wgslsmith_index_u32(~4294967295u, 8u)], arg_0.a.x) ^ var_2.b), _wgslsmith_add_vec4_i32(max(vec4<i32>(_wgslsmith_mod_i32(-39652i, u_input.a), var_2.a.d, 2147483647i, _wgslsmith_sub_i32(u_input.a, u_input.a)), select(vec4<i32>(-16379i, -17717i, u_input.a, 2147483647i), -vec4<i32>(var_2.a.d, -1i, -2347i, u_input.a), !var_3.a.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(firstTrailingBit(-2147483647i), _wgslsmith_mod_i32(0i, -1i), 1i, i32(-1i) * -1i), firstTrailingBit(abs(vec4<i32>(var_2.a.d, var_2.a.a.x, u_input.a, var_2.a.a.x))))), select(vec4<bool>(all(var_1.a), false, true, any(vec4<bool>(arg_0.a.x, false, true, true)) | var_1.a.x), select(!(!vec4<bool>(true, true, var_3.a.x, false)), vec4<bool>(true, var_1.a.x, false, true), select(!vec4<bool>(var_1.a.x, var_1.a.x, false, var_2.a.c), !vec4<bool>(arg_0.a.x, var_1.a.x, var_3.a.x, false), any(vec2<bool>(true, true)))), arg_0.a.x));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_4(vec2<bool>(true, func_1(Struct_1(vec2<i32>(2147483647i, u_input.a), -1392f, false, -14638i), _wgslsmith_add_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(78643u, 8u)], 8u)], 8u)], 8u)], 25312u, 1u), vec3<u32>(4294967295u, 4294967295u, 36963u))))));
    var var_1 = Struct_3(global2[_wgslsmith_index_u32(select(0u, global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(51657u, 46363u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(59161u, 8u)], 8u)], 8u)], 8u)]), vec3<u32>(8031u, 0u, 8485u))), 8u)], !(var_0.b < 210f)) | _wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(89307u, 8u)], global3[_wgslsmith_index_u32(4294967295u, 8u)]), vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(8915u, 8u)]))), ~countOneBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 8u)], 8u)])), 25u)], reverseBits(_wgslsmith_add_vec4_i32(select(vec4<i32>(19506i, u_input.a, u_input.a, 0i) & vec4<i32>(2147483647i, u_input.a, var_0.d, var_0.a.x), ~vec4<i32>(var_0.a.x, 2147483647i, u_input.a, 21571i), vec4<bool>(var_0.c, var_0.c, var_0.c, true)), vec4<i32>(var_0.d, u_input.a, max(var_0.d, var_0.d), _wgslsmith_sub_i32(29164i, u_input.a)))), !(!(!(!vec4<bool>(true, true, var_0.c, var_0.c)))));
    let var_2 = Struct_1(vec2<i32>(-5523i, var_0.d), var_1.a.a.b, var_1.c.x != var_1.c.x, ~countOneBits(firstTrailingBit(var_1.b.x)));
    var var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -406f), _wgslsmith_f_op_f32(round(1096f)), var_0.b, _wgslsmith_f_op_f32(abs(-992f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-1068f + var_2.b), 1418f, -1885f, _wgslsmith_div_f32(var_2.b, 339f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.a.b), var_1.a.a.b, 633f, 1220f))));
    var var_4 = !vec3<bool>(all(select(select(vec3<bool>(true, var_1.c.x, false), global1[_wgslsmith_index_u32(21158u, 17u)], var_1.c.zww), select(var_1.c.ywy, vec3<bool>(var_0.c, false, true), var_1.c.x), var_1.c.wwz)), var_2.c, (var_0.c || true) && false);
    var var_5 = countOneBits(func_4(Struct_4(select(select(vec2<bool>(true, false), var_4.zx, var_4.zz), select(var_1.c.zz, vec2<bool>(var_4.x, var_2.c), vec2<bool>(true, true)), true))).a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1797f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.b)) * -140f))), vec4<u32>(var_1.a.b, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(0u, 8u)], var_1.a.b), firstTrailingBit(22892u)), 39228u), 8u)], 8u)], 0u));
}

