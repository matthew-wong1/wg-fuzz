struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false));

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec3<f32>(284f, 1000f, -1189f), vec4<bool>(false, false, true, true), 0u), Struct_1(vec3<f32>(-616f, -405f, 114f), vec4<bool>(true, false, true, true), 50019u), Struct_1(vec3<f32>(988f, -283f, -1159f), vec4<bool>(true, true, false, true), 54823u), Struct_1(vec3<f32>(-2104f, -241f, -404f), vec4<bool>(true, true, false, false), 33723u), Struct_1(vec3<f32>(-943f, 215f, -1136f), vec4<bool>(false, false, false, false), 4294967295u), Struct_1(vec3<f32>(-1768f, 1430f, -156f), vec4<bool>(true, false, false, true), 55990u), Struct_1(vec3<f32>(-223f, 1333f, -692f), vec4<bool>(true, false, true, false), 4294967295u), Struct_1(vec3<f32>(117f, -1275f, 1634f), vec4<bool>(false, true, false, false), 1u), Struct_1(vec3<f32>(-1000f, -277f, -1824f), vec4<bool>(false, true, true, true), 99867u), Struct_1(vec3<f32>(-701f, -1000f, 400f), vec4<bool>(true, true, true, true), 2806u), Struct_1(vec3<f32>(-177f, 614f, 177f), vec4<bool>(true, true, true, false), 4294967295u), Struct_1(vec3<f32>(-747f, -342f, 1059f), vec4<bool>(true, true, true, false), 38906u), Struct_1(vec3<f32>(-111f, -358f, -303f), vec4<bool>(true, true, false, true), 26899u), Struct_1(vec3<f32>(-887f, 189f, -1053f), vec4<bool>(false, false, false, false), 1u), Struct_1(vec3<f32>(-515f, 1644f, 336f), vec4<bool>(true, false, false, true), 31370u), Struct_1(vec3<f32>(-214f, -2254f, -160f), vec4<bool>(false, false, true, false), 47115u), Struct_1(vec3<f32>(-261f, 2055f, -1513f), vec4<bool>(false, false, false, false), 42942u), Struct_1(vec3<f32>(171f, -434f, 796f), vec4<bool>(false, false, false, false), 14304u), Struct_1(vec3<f32>(356f, 1000f, 655f), vec4<bool>(true, true, true, false), 14656u), Struct_1(vec3<f32>(-890f, 602f, 1604f), vec4<bool>(false, false, true, false), 1u), Struct_1(vec3<f32>(550f, -703f, 237f), vec4<bool>(false, false, true, false), 1u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec4<f32>) -> vec2<i32> {
    global1 = array<Struct_1, 21>();
    global1 = array<Struct_1, 21>();
    var var_0 = firstLeadingBit(1i);
    let var_1 = vec3<bool>(arg_1.a.b.x, any(arg_1.a.b.xyx) && (any(!arg_1.a.b.xz) != arg_1.d.b.x), arg_1.d.b.x);
    var_0 = select(58i, u_input.a, true);
    return countOneBits(arg_0.yz);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: vec2<i32>) -> bool {
    global1 = array<Struct_1, 21>();
    let var_0 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-294f)), _wgslsmith_f_op_f32(floor(-531f)), arg_3.x == u_input.a)), 768f, 1153f), vec4<bool>(all(vec3<bool>(false, arg_2.b, arg_2.b)), !(arg_3.x <= 2147483647i), select(!arg_2.b, arg_3.x == 24211i, true), true), arg_1.x), -_wgslsmith_sub_i32(_wgslsmith_mod_i32(-1i, arg_3.x), 1i), select(arg_2.a.x, arg_1.x, (any(vec3<bool>(false, arg_2.b, false)) && arg_2.b) & true), global1[_wgslsmith_index_u32(u_input.b.x, 21u)]);
    var var_1 = ~firstLeadingBit(-_wgslsmith_mult_vec3_i32(vec3<i32>(arg_3.x, u_input.a, arg_3.x), vec3<i32>(arg_3.x, -1i, arg_3.x)) | -vec3<i32>(29035i, u_input.a, arg_3.x));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, ~_wgslsmith_div_u32(u_input.c.x, arg_2.a.x)), vec2<u32>(~(~_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(arg_1.x, 116558u))), ~_wgslsmith_dot_vec3_u32(arg_1.xxw, abs(vec3<u32>(u_input.c.x, 1u, 20210u))))), 21u)];
    var var_3 = any(vec3<bool>(true, all(var_2.b.ww), all(vec2<bool>(arg_2.b, false))));
    return !var_2.b.x;
}

fn func_2() -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1309f, 432f, -1460f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-510f, -108f, -1421f)))))), vec4<bool>(func_4(~select(vec4<u32>(22100u, 10712u, 101965u, 79267u), vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x), false), u_input.b, Struct_3(~u_input.b.zwy, true), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), func_3(vec3<i32>(u_input.a, u_input.a, 0i), Struct_2(Struct_1(vec3<f32>(-260f, 277f, -408f), global0[_wgslsmith_index_u32(u_input.b.x, 28u)], u_input.b.x), -1i, 6838u, global1[_wgslsmith_index_u32(0u, 21u)]), vec4<f32>(1000f, -1361f, -105f, -131f)))), true | any(vec3<bool>(true, true, true)), true, true), u_input.c.x);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32, arg_3: vec2<f32>) -> Struct_3 {
    global0 = array<vec4<bool>, 28>();
    global0 = array<vec4<bool>, 28>();
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(~(~1u & arg_0.a.x), 21u)], ~firstTrailingBit(arg_2), ~_wgslsmith_mult_u32(u_input.b.x, select(u_input.c.x, ~arg_0.a.x, false)), func_2());
    global0 = array<vec4<bool>, 28>();
    var var_1 = true;
    return arg_1;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> vec3<bool> {
    var var_0 = select(!(!(!vec2<bool>(arg_0.b, arg_1.b))), !func_2().b.xx, func_2().b.xx);
    let var_1 = vec3<i32>(-67259i, _wgslsmith_sub_i32(29032i, u_input.a), firstTrailingBit(0i) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.a.x, arg_1.a.x, arg_0.a.x) | vec3<u32>(4294967295u, 47736u, arg_1.a.x), vec3<u32>(u_input.c.x, 1u, 0u) >> (vec3<u32>(4294967295u, 4294967295u, 31179u) % vec3<u32>(32u))) % 32u));
    var var_2 = any(!(!func_2().b)) && ((_wgslsmith_f_op_f32(f32(-1f) * -2652f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))) != arg_1.b);
    var_0 = !vec2<bool>(arg_0.b & !arg_1.b, any(vec2<bool>(true, var_0.x)));
    var_0 = select(func_2().b.xw, !vec2<bool>(func_2().b.x, all(vec2<bool>(true, var_0.x)) == true), (firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, var_1.x), var_1)) <= (i32(-1i) * -7923i)) || (18225i >= (-35561i ^ (-1i ^ var_1.x))));
    return !vec3<bool>(false, true, arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(true, any(func_5(func_1(Struct_3(u_input.b.zzz, true), Struct_3(vec3<u32>(4294967295u, 0u, u_input.b.x), true), 48615i, vec2<f32>(-653f, -834f)), func_1(Struct_3(u_input.b.zww, false), Struct_3(u_input.b.wwx, true), 2147483647i, vec2<f32>(1292f, -1000f)))));
    global0 = array<vec4<bool>, 28>();
    global0 = array<vec4<bool>, 28>();
    let var_1 = !vec2<bool>(!(!var_0.x | func_2().b.x), true);
    var var_2 = Struct_3(~_wgslsmith_mod_vec3_u32(~max(u_input.b.yxw, vec3<u32>(u_input.b.x, 0u, u_input.b.x)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(34979u, u_input.c.x, 0u), vec3<u32>(1u, u_input.b.x, 4294967295u)), u_input.b.x | u_input.c.x, 1u)), var_1.x);
    let var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(183f)), _wgslsmith_div_f32(-1971f, -218f)))), _wgslsmith_f_op_f32(-766f * -1022f), _wgslsmith_f_op_f32(f32(-1f) * -474f), -1418f), 45065u, vec4<f32>(_wgslsmith_f_op_f32(822f - _wgslsmith_f_op_f32(f32(-1f) * -1098f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(999f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1102f, -458f)))), _wgslsmith_f_op_f32(f32(-1f) * -976f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -927f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -261f))))), 28366u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1380f - 333f)))));
}

