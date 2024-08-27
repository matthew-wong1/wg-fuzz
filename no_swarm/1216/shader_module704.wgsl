struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(0i, vec4<bool>(false, false, false, true), Struct_1(true, vec3<f32>(1275f, 1693f, -538f), true), vec4<u32>(19660u, 1u, 1u, 0u));

var<private> global1: array<vec4<bool>, 12>;

var<private> global2: array<f32, 26> = array<f32, 26>(-972f, -1177f, 377f, 1264f, -575f, -282f, 524f, 147f, 544f, -923f, 1000f, -826f, -1616f, -2435f, -376f, -1122f, -577f, 1357f, -1117f, 943f, -801f, 747f, -531f, 1000f, 1305f, 129f);

var<private> global3: array<vec4<i32>, 27> = array<vec4<i32>, 27>(vec4<i32>(0i, -1i, -33565i, i32(-2147483648)), vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 17487i), vec4<i32>(i32(-2147483648), 1i, 19505i, 8930i), vec4<i32>(-10488i, 27522i, 1i, -59558i), vec4<i32>(2147483647i, 30951i, 0i, 22113i), vec4<i32>(24068i, -10066i, -1i, 65345i), vec4<i32>(-42284i, 0i, i32(-2147483648), -1i), vec4<i32>(i32(-2147483648), 0i, -1i, 1i), vec4<i32>(i32(-2147483648), 14926i, 27471i, 0i), vec4<i32>(0i, -1i, -25333i, 1i), vec4<i32>(-86252i, 2147483647i, 29777i, 2147483647i), vec4<i32>(-61516i, 36002i, 2147483647i, 2147483647i), vec4<i32>(59088i, 33792i, 649i, -29396i), vec4<i32>(2147483647i, 19824i, 49576i, -47350i), vec4<i32>(0i, 45643i, i32(-2147483648), -15464i), vec4<i32>(30616i, -5404i, 0i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 40096i, -43625i, -1i), vec4<i32>(7414i, 0i, 9565i, i32(-2147483648)), vec4<i32>(18547i, -45827i, -17563i, 2147483647i), vec4<i32>(-1276i, -1i, -31003i, i32(-2147483648)), vec4<i32>(18325i, 4092i, i32(-2147483648), -102470i), vec4<i32>(21700i, 2147483647i, 56818i, 80180i), vec4<i32>(0i, 2147483647i, i32(-2147483648), -71262i), vec4<i32>(32324i, -1159i, -14858i, -33859i), vec4<i32>(56002i, 15317i, 0i, 35399i), vec4<i32>(-838i, -1i, -35001i, -45591i), vec4<i32>(924i, 47899i, -16296i, -65499i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(646f, 2122f, _wgslsmith_f_op_f32(min(global0.c.b.x, global0.c.b.x))));
    global1 = array<vec4<bool>, 12>();
    global3 = array<vec4<i32>, 27>();
    var var_1 = vec2<i32>(global0.a, ~_wgslsmith_mult_i32(select(3607i, _wgslsmith_mod_i32(u_input.c, u_input.c), true), global0.a));
    global2 = array<f32, 26>();
    return -2147483647i;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = false | !(_wgslsmith_f_op_f32(-arg_3.a.b.x) == _wgslsmith_div_f32(arg_3.a.b.x, _wgslsmith_f_op_f32(trunc(arg_3.a.b.x))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_1.c.b.x, global2[_wgslsmith_index_u32(abs(73975u), 26u)])), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1488f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global0.c.b.x)))), false)))));
    global3 = array<vec4<i32>, 27>();
    return select(arg_2.b.wwx, select(!vec3<bool>(false, arg_3.a.c, 235f == var_1), vec3<bool>(false, all(vec3<bool>(false, global0.b.x, arg_2.b.x)), arg_2.c.c || arg_2.c.c), var_0), true);
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> u32 {
    var var_0 = select(vec2<bool>(true, true), select(vec2<bool>(!all(global1[_wgslsmith_index_u32(66425u, 12u)]), !(arg_1 | global0.b.x)), !(!select(vec2<bool>(false, false), global0.b.xy, global0.b.zw)), any(!func_3(vec3<bool>(global0.b.x, true, true), Struct_3(19270i, global0.b, arg_2, global0.d), Struct_3(2147483647i, vec4<bool>(arg_1, global0.c.c, false, arg_2.a), Struct_1(global0.c.a, global0.c.b, false), global0.d), Struct_2(global0.c, vec4<u32>(global0.d.x, u_input.b, global0.d.x, global0.d.x))))), select(vec2<bool>(true, any(global0.b.xx)), global0.b.zy, global0.b.wy));
    global3 = array<vec4<i32>, 27>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -514f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0.d.x << ((1u | (global0.d.x << (u_input.b % 32u))) % 32u), 26u)] + _wgslsmith_f_op_f32(trunc(-293f))));
    var var_2 = vec3<f32>(global0.c.b.x, -180f, 695f);
    global2 = array<f32, 26>();
    return u_input.b & (firstLeadingBit(_wgslsmith_add_u32(27101u, abs(1u))) & ~u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(!global0.b.zwy, vec3<bool>(global0.b.x, false, any(vec3<bool>(true, global0.c.a, true))), vec3<bool>(global0.c.a, global0.c.a | false, any(global0.b.zxx))));
    var var_1 = Struct_3(func_1(), global1[_wgslsmith_index_u32(func_2(1i, any(select(global0.b.yz, vec2<bool>(var_0.x, global0.c.c), vec2<bool>(var_0.x, false))) | !var_0.x, global0.c), 12u)], Struct_1(all(vec2<bool>(true, var_0.x)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1124f, global2[_wgslsmith_index_u32(4294967295u, 26u)])), vec3<f32>(-934f, -666f, global0.c.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.c.b + vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 26u)], -184f, 1235f)))), false), global0.d);
    global3 = array<vec4<i32>, 27>();
    let var_2 = ~((~_wgslsmith_mult_vec3_u32(var_1.d.yzy, vec3<u32>(u_input.b, 1u, var_1.d.x)) ^ var_1.d.wyz) ^ global0.d.yxy);
    let var_3 = any(select(!(!vec2<bool>(global0.c.a, false)), select(vec2<bool>(false, true), vec2<bool>(false, global0.c.a), global0.a != global0.a), var_1.c.a)) || true;
    let x = u_input.a;
    s_output = StorageBuffer(227i, firstLeadingBit(var_1.d.wz));
}

