struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(4294967295u, 27326u), vec2<u32>(808u, 49357u), vec2<u32>(65756u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 56029u), vec2<u32>(1u, 96268u), vec2<u32>(1u, 23354u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 57784u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 41151u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 23196u), vec2<u32>(4294967295u, 4294967295u));

var<private> global1: array<vec4<i32>, 9>;

var<private> global2: Struct_2 = Struct_2(1830i);

var<private> global3: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(4294967295u, 685f, vec3<i32>(i32(-2147483648), -17895i, 1i), vec2<u32>(28829u, 0u), 86387u), Struct_1(4294967295u, -1158f, vec3<i32>(2147483647i, 0i, 0i), vec2<u32>(4294967295u, 4294967295u), 12849u), Struct_1(1u, 111f, vec3<i32>(1i, -9932i, 10313i), vec2<u32>(38689u, 1u), 20245u), Struct_1(0u, -1202f, vec3<i32>(-28068i, -1i, 8926i), vec2<u32>(11437u, 91727u), 1u), Struct_1(24492u, -355f, vec3<i32>(i32(-2147483648), 2147483647i, 0i), vec2<u32>(90887u, 0u), 4143u), Struct_1(12666u, 203f, vec3<i32>(-21545i, 0i, -34450i), vec2<u32>(47609u, 22283u), 1u), Struct_1(40492u, 784f, vec3<i32>(-48789i, 11552i, 20915i), vec2<u32>(4294967295u, 4294967295u), 48485u), Struct_1(41182u, 814f, vec3<i32>(17490i, 0i, -21976i), vec2<u32>(0u, 4294967295u), 16099u), Struct_1(5518u, -177f, vec3<i32>(20440i, 2147483647i, i32(-2147483648)), vec2<u32>(7999u, 4294967295u), 4294967295u), Struct_1(46531u, 1141f, vec3<i32>(1i, 9344i, -36487i), vec2<u32>(0u, 18457u), 0u), Struct_1(0u, 862f, vec3<i32>(i32(-2147483648), 2147483647i, 1i), vec2<u32>(12929u, 28454u), 1u), Struct_1(1u, -229f, vec3<i32>(13990i, -34960i, 1i), vec2<u32>(24720u, 4294967295u), 2550u), Struct_1(0u, -416f, vec3<i32>(-24702i, 35647i, 70407i), vec2<u32>(9758u, 31858u), 6648u), Struct_1(1u, -2091f, vec3<i32>(-18946i, -1i, 0i), vec2<u32>(1u, 1u), 1u), Struct_1(61023u, 154f, vec3<i32>(16140i, i32(-2147483648), i32(-2147483648)), vec2<u32>(4294967295u, 16130u), 4294967295u), Struct_1(4294967295u, 723f, vec3<i32>(-9987i, i32(-2147483648), 59441i), vec2<u32>(20274u, 2263u), 1u), Struct_1(29784u, -548f, vec3<i32>(i32(-2147483648), -1i, 30043i), vec2<u32>(0u, 35111u), 36197u), Struct_1(4294967295u, 714f, vec3<i32>(i32(-2147483648), -22233i, -15922i), vec2<u32>(10641u, 4294967295u), 45669u), Struct_1(29853u, 175f, vec3<i32>(-83506i, -1i, 0i), vec2<u32>(39402u, 67904u), 1u), Struct_1(0u, 151f, vec3<i32>(37274i, 45269i, -8897i), vec2<u32>(37102u, 0u), 1u), Struct_1(30637u, -605f, vec3<i32>(34561i, 33329i, 0i), vec2<u32>(0u, 28362u), 8351u), Struct_1(88853u, 246f, vec3<i32>(1i, -35936i, 20028i), vec2<u32>(4294967295u, 0u), 12126u), Struct_1(46771u, 533f, vec3<i32>(-19236i, i32(-2147483648), 6785i), vec2<u32>(0u, 4294967295u), 95462u));

var<private> global4: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> i32 {
    var var_0 = true | all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true));
    let var_1 = max(vec2<i32>(-(global2.a ^ global4.b.c.x) | -60301i, u_input.a), global4.b.c.yx);
    global1 = array<vec4<i32>, 9>();
    let var_2 = Struct_3(global4.a, global3[_wgslsmith_index_u32(countOneBits((global4.b.a << (~global4.b.d.x % 32u)) >> (88728u % 32u)), 23u)]);
    var var_3 = global2.a;
    return var_2.a.a;
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_4(~func_3(), global4.b.b);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b.b)), _wgslsmith_f_op_f32(f32(-1f) * -125f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.b.b, _wgslsmith_f_op_f32(ceil(624f)))));
    var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.b.b, var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.b.b, var_0.b, global4.b.b) + vec3<f32>(global4.b.b, 1775f, global4.b.b)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1616f, -857f, -1253f))))));
    global4 = Struct_3(Struct_2(u_input.a), global4.b);
    var_0 = Struct_4(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1065f))));
    return Struct_4(18132i, 1597f);
}

fn func_1() -> u32 {
    var var_0 = func_2();
    let var_1 = Struct_4(~var_0.a, _wgslsmith_div_f32(func_2().b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-789f - _wgslsmith_f_op_f32(-global4.b.b)), _wgslsmith_f_op_f32(abs(var_0.b))))));
    var var_2 = !all(select(vec3<bool>(all(vec3<bool>(true, true, false)), true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), !any(vec2<bool>(true, true))));
    var var_3 = 5026u;
    let var_4 = select(~abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-16827i, -20820i, -3801i, -16935i), max(global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(0u, 9u)]))), vec4<i32>(_wgslsmith_dot_vec2_i32(global4.b.c.yz, global4.b.c.xz), u_input.a, ~global4.a.a & -(var_1.a << (4294967295u % 32u)), -_wgslsmith_dot_vec2_i32(vec2<i32>(15190i, 0i), global4.b.c.xz & global4.b.c.yz)), select(vec4<bool>(any(vec4<bool>(false, false, true, false)) | true, true, false, true), select(select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true))), vec4<bool>(true, true, true, true), false && any(vec3<bool>(true, false, false))), true));
    return _wgslsmith_mult_u32(countOneBits(~(~95416u)), max(~(~(~4294967295u)), global4.b.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(_wgslsmith_mult_vec4_u32(max(vec4<u32>(global4.b.a, 28968u, global4.b.a, 23715u), ~vec4<u32>(global4.b.d.x, global4.b.e, 1u, global4.b.e)), firstTrailingBit(~vec4<u32>(0u, 0u, global4.b.d.x, global4.b.a))) | vec4<u32>(func_1(), max(global4.b.d.x, global4.b.d.x) >> ((global4.b.a | global4.b.a) % 32u), _wgslsmith_mult_u32(global4.b.e, ~global4.b.d.x), _wgslsmith_mult_u32(global4.b.e | 0u, global4.b.e)));
    let var_1 = global4.b.b;
    global0 = array<vec2<u32>, 16>();
    let var_2 = var_0.x;
    var var_3 = global4.a;
    let var_4 = global4.a;
    var var_5 = _wgslsmith_f_op_f32(-global4.b.b);
    var var_6 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.b.b, global4.b.b, -1011f, global4.b.b) - vec4<f32>(-465f, global4.b.b, global4.b.b, 1367f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(182f, global4.b.b, -1820f, global4.b.b) * vec4<f32>(168f, global4.b.b, 184f, global4.b.b)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b.b, global4.b.b, global4.b.b, -130f))))))));
    var_6 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(809f, var_6.x, global4.b.b, var_6.x))), vec4<f32>(_wgslsmith_f_op_f32(-var_6.x), 746f, _wgslsmith_f_op_f32(step(global4.b.b, global4.b.b)), _wgslsmith_f_op_f32(-135f * var_6.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 353i & var_3.a, 58974i, 0i), abs(~global1[_wgslsmith_index_u32(38734u, 9u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_6.x)));
}

