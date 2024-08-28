struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(30788u, Struct_1(vec4<i32>(-14761i, 27237i, 0i, 0i), vec2<f32>(-1787f, -802f), 622f)), Struct_2(4294967295u, Struct_1(vec4<i32>(-33254i, -10772i, 1i, 16203i), vec2<f32>(736f, -822f), -406f)), Struct_2(60654u, Struct_1(vec4<i32>(-21077i, -20605i, -27717i, 2147483647i), vec2<f32>(-1462f, 112f), -727f)));

var<private> global1: array<f32, 32> = array<f32, 32>(855f, -1883f, 1915f, 703f, -2826f, 785f, 269f, 615f, 736f, 723f, -946f, 1212f, 2881f, -1000f, -423f, 648f, 743f, -566f, 388f, -1705f, 523f, 530f, -2167f, -237f, -1235f, -1000f, 646f, -971f, -221f, -497f, -757f, -487f);

var<private> global2: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    global0 = array<Struct_2, 3>();
    let var_0 = Struct_2(arg_0.a, Struct_1(_wgslsmith_clamp_vec4_i32(~abs(vec4<i32>(-58466i, global2.a.x, arg_1.b.a.x, arg_0.b.a.x)), arg_0.b.a, global2.a ^ _wgslsmith_add_vec4_i32(global2.a, vec4<i32>(global2.a.x, -2147483647i, -37943i, -1i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-593f, global1[_wgslsmith_index_u32(1u, 32u)]))) * vec2<f32>(_wgslsmith_f_op_f32(floor(-566f)), _wgslsmith_div_f32(arg_0.b.b.x, arg_1.b.c))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.b.c * 917f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.b.c)) + _wgslsmith_f_op_f32(f32(-1f) * -941f))))));
    var var_1 = _wgslsmith_clamp_vec4_i32(arg_0.b.a, vec4<i32>(arg_1.b.a.x | _wgslsmith_add_i32(-2147483647i, arg_1.b.a.x), var_0.b.a.x, reverseBits(-1i & var_0.b.a.x), _wgslsmith_dot_vec2_i32(global2.a.ww ^ arg_0.b.a.zz, ~vec2<i32>(global2.a.x, 54199i))) << (~u_input.a % vec4<u32>(32u)), select(-(-vec4<i32>(arg_1.b.a.x, arg_1.b.a.x, -37638i, arg_1.b.a.x) | abs(arg_1.b.a)), var_0.b.a, vec4<bool>(false, !(arg_0.a < 0u), any(vec2<bool>(true, false)) & true, true)));
    global1 = array<f32, 32>();
    global0 = array<Struct_2, 3>();
    return -var_1.x << (~0u % 32u);
}

fn func_2() -> f32 {
    global1 = array<f32, 32>();
    let var_0 = u_input.a.xy;
    let var_1 = abs(~u_input.a);
    let var_2 = -_wgslsmith_clamp_vec4_i32(min(global2.a, vec4<i32>(func_3(Struct_2(1u, Struct_1(vec4<i32>(u_input.b, 2147483647i, -38935i, global2.a.x), global2.b, 123f)), global0[_wgslsmith_index_u32(2010u, 3u)]), _wgslsmith_dot_vec2_i32(global2.a.yw, vec2<i32>(global2.a.x, u_input.b)), global2.a.x, _wgslsmith_mod_i32(u_input.b, -1646i))), vec4<i32>(u_input.b, max(38799i, 36675i), 43730i, 36325i), global2.a);
    global2 = Struct_1(_wgslsmith_mult_vec4_i32(var_2, _wgslsmith_mod_vec4_i32(vec4<i32>(global2.a.x, _wgslsmith_add_i32(-22887i, var_2.x), abs(2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, -1i, u_input.b), global2.a.yxz)), vec4<i32>(-12968i, -3018i, ~global2.a.x, _wgslsmith_mult_i32(global2.a.x, var_2.x)))), _wgslsmith_f_op_vec2_f32(-global2.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(894f + global2.b.x))));
    return _wgslsmith_f_op_f32(-379f + -288f);
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<bool>(false, _wgslsmith_f_op_f32(func_2()) == -341f);
    let var_1 = true;
    global2 = Struct_1(vec4<i32>(-reverseBits(-11857i), 1i, abs(firstLeadingBit(1i)), ~global2.a.x), global2.b, 743f);
    return Struct_1(vec4<i32>(29768i, -u_input.b, u_input.b, u_input.b), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global2.b)))))), -1018f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.c.x), select(vec2<u32>(u_input.a.x, u_input.c.x), u_input.c, false)) >= u_input.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(951f * global2.b.x), -128f), global1[_wgslsmith_index_u32(~(~u_input.c.x), 32u)])) > _wgslsmith_f_op_f32(floor(212f)));
    var var_1 = func_1();
    var_1 = Struct_1(abs(abs(global2.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_1.b.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(141f, -444f) - vec2<f32>(588f, 670f)))), global1[_wgslsmith_index_u32(abs(u_input.a.x), 32u)]);
    var_0 = select(!select(vec3<bool>(true, all(vec4<bool>(true, var_0.x, var_0.x, false)), true), vec3<bool>(true, true, true), true), !vec3<bool>(any(select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(true, true, true, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x))), true, any(select(vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(false, false, true, false)))), !(!(!(!vec3<bool>(false, var_0.x, true)))));
    global2 = func_1();
    let var_2 = Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1360f + -1283f), var_1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -109f)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(reverseBits(4294967295u), select(28626u, 0u, select(var_0.x, var_0.x, var_0.x)), !(u_input.c.x >= u_input.c.x))), vec2<u32>(70970u, u_input.a.x), _wgslsmith_div_vec2_u32(~vec2<u32>(1u, 4294967295u), u_input.a.wy), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(func_1().b.x)))), max(firstLeadingBit(vec3<u32>(u_input.a.x, u_input.c.x, u_input.c.x) >> (u_input.a.wyz % vec3<u32>(32u))) & min(~u_input.a.zxz, u_input.a.xww), _wgslsmith_clamp_vec3_u32(u_input.a.wxy, ~(~vec3<u32>(u_input.c.x, 11495u, 47004u)), u_input.a.wwx)));
}

