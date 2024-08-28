struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: bool,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 26> = array<u32, 26>(21766u, 74659u, 60884u, 87272u, 1u, 1u, 4294967295u, 4294967295u, 0u, 4294967295u, 4294967295u, 4294967295u, 4294967295u, 1u, 1u, 49349u, 1u, 136008u, 0u, 131635u, 45264u, 0u, 1u, 48370u, 1u, 6893u);

var<private> global2: array<vec2<f32>, 15> = array<vec2<f32>, 15>(vec2<f32>(178f, -1515f), vec2<f32>(2752f, 1217f), vec2<f32>(-209f, 149f), vec2<f32>(-1476f, 2104f), vec2<f32>(-760f, -1118f), vec2<f32>(-1031f, 357f), vec2<f32>(-238f, 962f), vec2<f32>(-899f, -735f), vec2<f32>(788f, 1531f), vec2<f32>(189f, 599f), vec2<f32>(-1822f, 1060f), vec2<f32>(689f, 220f), vec2<f32>(-2029f, -687f), vec2<f32>(950f, 1079f), vec2<f32>(-1000f, 1532f));

var<private> global3: vec4<bool> = vec4<bool>(true, false, true, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: f32) -> bool {
    global1 = array<u32, 26>();
    let var_0 = vec4<bool>(false, any(vec2<bool>(all(select(vec2<bool>(global3.x, global3.x), vec2<bool>(false, global3.x), vec2<bool>(global3.x, global3.x))), true)), !((!global3.x && (global3.x | global3.x)) && select(global3.x, global3.x, all(global3.ww))), any(select(select(!global3.xwz, select(vec3<bool>(false, false, global3.x), vec3<bool>(false, global3.x, global3.x), true), !global3.zxw), global3.wyy, !any(vec3<bool>(true, true, global3.x)))));
    var var_1 = -174f;
    let var_2 = true;
    let var_3 = Struct_2(Struct_1(u_input.c.x > -1i));
    return true;
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: vec4<u32>) -> u32 {
    var var_0 = arg_1.x;
    global0 = 18353u;
    var var_1 = u_input.c.wxx;
    let var_2 = arg_2.x << (arg_2.x % 32u);
    let var_3 = func_3(30792u, _wgslsmith_f_op_f32(floor(-851f)));
    return countOneBits(1u | select(22413u & arg_2.x, u_input.d, !global3.x)) >> (~global1[_wgslsmith_index_u32(u_input.d, 26u)] % 32u);
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<u32>(select(_wgslsmith_div_u32(firstTrailingBit(abs(global1[_wgslsmith_index_u32(u_input.d, 26u)])), func_2(u_input.c.x, ~vec4<u32>(1u, 1u, 854u, u_input.d), vec4<u32>(1u, 4294967295u, 0u, 0u))), 4294967295u, global3.x), 20741u, 1u, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(21179u, 1u), 26u)]);
    var var_1 = min(~vec3<i32>(u_input.c.x, _wgslsmith_clamp_i32(u_input.c.x, u_input.a.x, u_input.c.x), min(u_input.a.x, u_input.a.x)), ~select(vec3<i32>(u_input.c.x, u_input.c.x, u_input.a.x), -vec3<i32>(0i, u_input.a.x, u_input.c.x), global3.x)) & select(vec3<i32>(select(_wgslsmith_div_i32(2147483647i, u_input.a.x), u_input.a.x, true), u_input.c.x, (u_input.c.x << (var_0.x % 32u)) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 2147483647i, u_input.a.x), u_input.c.ywz)), abs(u_input.c.zww), all(select(select(vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(false, true, global3.x, global3.x), vec4<bool>(global3.x, true, true, global3.x)), select(vec4<bool>(false, global3.x, global3.x, global3.x), vec4<bool>(false, false, global3.x, global3.x), true), select(vec4<bool>(global3.x, global3.x, false, global3.x), vec4<bool>(true, global3.x, false, global3.x), global3.x))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-1f), Struct_2(Struct_1(false)), true, select(!(!vec3<bool>(global3.x, global3.x, true)), global3.ywx, (_wgslsmith_sub_i32(u_input.c.x, 18770i) ^ u_input.c.x) <= _wgslsmith_mult_i32(select(var_1.x, -5491i, global3.x), abs(u_input.c.x))), Struct_1(true));
    var var_3 = var_2.b;
    var var_4 = Struct_2(Struct_1(!(!var_3.a.a)));
    return Struct_1(_wgslsmith_f_op_f32(1465f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-771f)) + _wgslsmith_f_op_f32(117f + -341f))) != _wgslsmith_f_op_f32(394f + _wgslsmith_f_op_f32(-var_2.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1[_wgslsmith_index_u32(~31451u, 26u)];
    global1 = array<u32, 26>();
    global2 = array<vec2<f32>, 15>();
    var var_0 = func_1();
    var_0 = Struct_1(var_0.a);
    var var_1 = _wgslsmith_mult_vec3_i32(select(u_input.c.yzx, u_input.c.wzx, !global3.x & true), u_input.c.wzw ^ _wgslsmith_clamp_vec3_i32(u_input.c.wzy, reverseBits(u_input.c.yyy), u_input.c.xxz));
    var var_2 = 1u;
    var_1 = -select(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(u_input.c.yzw, u_input.c.xyz), u_input.c.yxw) | ~(-u_input.c.zzy), u_input.c.wxz, false);
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.x, abs(2147483647i), 0i);
}

