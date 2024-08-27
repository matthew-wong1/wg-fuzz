struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_3 = Struct_3(vec2<u32>(0u, 6348u), vec3<u32>(76092u, 1u, 4294967295u), vec3<bool>(true, true, true), vec3<f32>(-1080f, 314f, -618f));

var<private> global2: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(vec2<u32>(1u, 0u), vec3<u32>(1u, 0u, 25057u), vec3<bool>(false, false, false), vec3<f32>(-640f, 892f, 3343f)), Struct_3(vec2<u32>(98111u, 4294967295u), vec3<u32>(0u, 87431u, 35560u), vec3<bool>(false, true, false), vec3<f32>(-362f, 819f, -1114f)), Struct_3(vec2<u32>(37044u, 25329u), vec3<u32>(88496u, 0u, 52570u), vec3<bool>(false, false, false), vec3<f32>(-1464f, -2322f, -1230f)), Struct_3(vec2<u32>(0u, 1u), vec3<u32>(44938u, 4294967295u, 17u), vec3<bool>(false, false, false), vec3<f32>(-1323f, -373f, -120f)), Struct_3(vec2<u32>(0u, 24826u), vec3<u32>(1u, 1u, 27622u), vec3<bool>(true, false, false), vec3<f32>(315f, 969f, 986f)), Struct_3(vec2<u32>(43646u, 24463u), vec3<u32>(4294967295u, 0u, 1u), vec3<bool>(true, true, true), vec3<f32>(-377f, 1754f, 372f)), Struct_3(vec2<u32>(46742u, 1u), vec3<u32>(28010u, 1u, 32821u), vec3<bool>(true, true, true), vec3<f32>(-2330f, -829f, -1279f)), Struct_3(vec2<u32>(4294967295u, 0u), vec3<u32>(4294967295u, 1u, 26821u), vec3<bool>(true, true, false), vec3<f32>(1028f, 1204f, 1000f)), Struct_3(vec2<u32>(7799u, 7664u), vec3<u32>(39503u, 4294967295u, 4294967295u), vec3<bool>(true, false, false), vec3<f32>(-941f, -1486f, -1000f)), Struct_3(vec2<u32>(98177u, 1u), vec3<u32>(0u, 3979u, 4294967295u), vec3<bool>(true, false, true), vec3<f32>(-1000f, -1610f, 1250f)), Struct_3(vec2<u32>(4294967295u, 12179u), vec3<u32>(42691u, 4294967295u, 28686u), vec3<bool>(false, true, false), vec3<f32>(1110f, -493f, -199f)), Struct_3(vec2<u32>(42433u, 11525u), vec3<u32>(0u, 35524u, 4294967295u), vec3<bool>(true, false, false), vec3<f32>(1491f, -303f, 903f)), Struct_3(vec2<u32>(4294967295u, 0u), vec3<u32>(96291u, 1u, 4294967295u), vec3<bool>(false, true, true), vec3<f32>(-581f, 2197f, 1714f)), Struct_3(vec2<u32>(69697u, 4294967295u), vec3<u32>(0u, 42370u, 4294967295u), vec3<bool>(false, false, true), vec3<f32>(-163f, -1412f, -438f)), Struct_3(vec2<u32>(2663u, 66949u), vec3<u32>(0u, 0u, 7179u), vec3<bool>(false, true, false), vec3<f32>(654f, 436f, -562f)), Struct_3(vec2<u32>(46240u, 28388u), vec3<u32>(0u, 4294967295u, 9018u), vec3<bool>(false, true, true), vec3<f32>(1351f, -216f, -362f)), Struct_3(vec2<u32>(1u, 86241u), vec3<u32>(0u, 41307u, 1u), vec3<bool>(false, true, false), vec3<f32>(-1490f, 1106f, -467f)), Struct_3(vec2<u32>(4294967295u, 29346u), vec3<u32>(2569u, 67272u, 4294967295u), vec3<bool>(true, true, false), vec3<f32>(835f, 1000f, -2824f)), Struct_3(vec2<u32>(16235u, 0u), vec3<u32>(0u, 0u, 25465u), vec3<bool>(true, false, false), vec3<f32>(-2131f, 1049f, -708f)), Struct_3(vec2<u32>(0u, 2983u), vec3<u32>(1u, 46505u, 12415u), vec3<bool>(true, false, false), vec3<f32>(-1080f, 1061f, -331f)), Struct_3(vec2<u32>(1u, 69910u), vec3<u32>(15845u, 85152u, 0u), vec3<bool>(true, false, false), vec3<f32>(-143f, -1174f, -685f)), Struct_3(vec2<u32>(46284u, 0u), vec3<u32>(56301u, 0u, 1u), vec3<bool>(false, false, false), vec3<f32>(1338f, -1104f, -1127f)));

var<private> global3: Struct_3;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    let var_0 = reverseBits(-1i);
    let var_1 = vec4<f32>(127f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.x * global1.d.x))), 936f, !global3.c.x)), 311f, 1852f);
    global2 = array<Struct_3, 22>();
    let var_2 = var_1.x;
    global2 = array<Struct_3, 22>();
    return 1f;
}

fn func_2() -> vec3<f32> {
    var var_0 = u_input.a;
    global0 = 1u;
    var var_1 = -(~0i);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2553f)) + _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec2_u32(vec2<u32>(0u, global3.a.x), global1.b.yx)))), global3.d.x, global3.d.x));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec4<u32>) -> Struct_3 {
    global3 = Struct_3(global1.a, _wgslsmith_add_vec3_u32(abs(global3.b), select(arg_2.xzz, arg_0.b, !all(vec4<bool>(global3.c.x, true, global3.c.x, false)))), vec3<bool>(true, global3.c.x, any(select(select(vec4<bool>(false, global1.c.x, global1.c.x, false), vec4<bool>(global3.c.x, false, global3.c.x, global1.c.x), arg_0.c.x), select(vec4<bool>(false, false, global3.c.x, arg_0.c.x), vec4<bool>(false, global3.c.x, global1.c.x, arg_0.c.x), vec4<bool>(false, global1.c.x, arg_0.c.x, arg_0.c.x)), select(vec4<bool>(true, false, false, global3.c.x), vec4<bool>(false, global1.c.x, global3.c.x, true), vec4<bool>(arg_0.c.x, global1.c.x, global3.c.x, global3.c.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_0.d.x, global3.d.x), _wgslsmith_div_f32(arg_0.d.x, -1003f), global3.d.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.d))) - _wgslsmith_div_vec3_f32(global3.d, vec3<f32>(_wgslsmith_f_op_f32(arg_0.d.x - global3.d.x), _wgslsmith_f_op_f32(-global3.d.x), _wgslsmith_f_op_f32(global3.d.x - 1565f)))));
    let var_0 = ~(-firstTrailingBit(abs(_wgslsmith_clamp_vec2_i32(u_input.a, u_input.a, vec2<i32>(3112i, 0i)))));
    let var_1 = vec4<f32>(-1104f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-662f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-686f, 1068f)))))), -947f);
    var var_2 = Struct_3(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, _wgslsmith_dot_vec2_u32(global1.b.zx, abs(arg_0.a))), select(~vec2<u32>(70517u, arg_2.x), _wgslsmith_mult_vec2_u32(vec2<u32>(4837u, global3.a.x), vec2<u32>(global3.a.x, 60116u)), ~global3.b.x <= (4294967295u << (u_input.b % 32u)))), arg_2.wxz, vec3<bool>(global1.c.x, any(!global3.c) == true, !(false | global1.c.x) && any(!arg_0.c.zz)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_0.d))) * vec3<f32>(_wgslsmith_f_op_f32(round(-277f)), -1568f, _wgslsmith_f_op_f32(exp2(var_1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1.d, _wgslsmith_f_op_vec3_f32(var_1.wwy + global3.d))), true)));
    global3 = arg_0;
    return Struct_3(~abs(~arg_2.yz) ^ arg_2.zw, countOneBits(_wgslsmith_mod_vec3_u32(~select(global3.b, vec3<u32>(var_2.a.x, 8066u, 13871u), false), ~vec3<u32>(global1.a.x, 50758u, 9232u))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, global1.c.x, true), var_2.c.x), vec3<bool>(true, global3.c.x, true), false), vec3<bool>(arg_0.c.x, arg_0.c.x, all(select(vec4<bool>(false, arg_0.c.x, var_2.c.x, var_2.c.x), vec4<bool>(true, global3.c.x, arg_0.c.x, false), vec4<bool>(global3.c.x, global1.c.x, true, true)))), global3.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1819f * var_1.x), -312f, 607f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1739f, 532f, var_1.x)))));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<bool>) -> i32 {
    global1 = func_4(Struct_3((vec2<u32>(9359u, 0u) | ~arg_1.e.d.wx) << (vec2<u32>(1u, global3.a.x) % vec2<u32>(32u)), global1.b, vec3<bool>(any(arg_3), arg_1.e.a, !(!arg_2.b.a)), _wgslsmith_f_op_vec3_f32(select(global1.d, _wgslsmith_f_op_vec3_f32(func_2()), !(!vec3<bool>(true, arg_1.e.a, global3.c.x))))), -(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-20599i, arg_1.a, arg_0), arg_2.a ^ 0i) & ~arg_2.a), select(_wgslsmith_add_vec4_u32(arg_1.e.d, vec4<u32>(_wgslsmith_sub_u32(global1.b.x, global3.a.x), _wgslsmith_sub_u32(4294967295u, 4294967295u), 70660u, global3.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(~arg_2.b.d.x, ~48179u, countOneBits(83843u), firstLeadingBit(arg_1.b.c.x)), abs(vec4<u32>(1u, 4294967295u, 0u, 43073u))), global1.c.x));
    let var_0 = func_4(Struct_3(~(~arg_2.e.c.zy), vec3<u32>(func_4(global2[_wgslsmith_index_u32(arg_2.b.d.x << (u_input.b % 32u), 22u)], 51i, vec4<u32>(arg_2.b.c.x, 1020u, global1.a.x, 1u) & arg_2.e.c).b.x, ~(~20832u), ~(~6971u)), global3.c, _wgslsmith_f_op_vec3_f32(func_2())), -(~(~arg_2.a)), ~(~vec4<u32>(_wgslsmith_div_u32(u_input.b, 45915u), abs(global3.b.x), _wgslsmith_sub_u32(76811u, 1u), _wgslsmith_mod_u32(1u, arg_2.b.d.x)))).b;
    global0 = ~(abs(_wgslsmith_sub_u32(var_0.x, var_0.x)) ^ _wgslsmith_sub_u32(global3.a.x & arg_1.b.c.x, abs(0u))) ^ _wgslsmith_mult_u32(6191u, ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(arg_1.b.d, arg_1.e.c), firstTrailingBit(global3.b.x)));
    var var_1 = arg_0;
    var var_2 = ~max(~(~53924u), arg_2.e.c.x) | ~firstLeadingBit(global1.b.x);
    return i32(-1i) * -56739i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<i32>(u_input.a.x, u_input.a.x, -abs(-48369i), -13887i), vec4<i32>(_wgslsmith_mult_i32(-1i & ~u_input.a.x, -func_1(10589i, Struct_2(u_input.a.x, Struct_1(global1.c.x, global1.d.x, vec4<u32>(71055u, u_input.b, global3.a.x, 0u), vec4<u32>(1u, 4294967295u, global3.a.x, 42528u)), 17368i, global3.c.x, Struct_1(global1.c.x, global3.d.x, vec4<u32>(u_input.b, 1u, u_input.b, 21166u), vec4<u32>(1u, 22297u, 61749u, 4294967295u))), Struct_2(u_input.a.x, Struct_1(false, 1731f, vec4<u32>(63887u, 4294967295u, u_input.b, global3.b.x), vec4<u32>(25000u, 120529u, global1.a.x, u_input.b)), -11909i, global3.c.x, Struct_1(true, global1.d.x, vec4<u32>(8290u, 31069u, 0u, u_input.b), vec4<u32>(global1.b.x, global3.b.x, global1.a.x, 1u))), vec4<bool>(true, global1.c.x, true, true))), -2147483647i, u_input.a.x, firstTrailingBit(u_input.a.x)), select(select(!(!vec4<bool>(global1.c.x, global3.c.x, global1.c.x, global3.c.x)), !select(vec4<bool>(global3.c.x, global1.c.x, global3.c.x, global1.c.x), vec4<bool>(false, global3.c.x, global1.c.x, global1.c.x), global3.c.x), _wgslsmith_f_op_f32(abs(-876f)) > _wgslsmith_div_f32(global1.d.x, global3.d.x)), vec4<bool>(true, !(!global1.c.x), global1.c.x, true), true));
    global3 = Struct_3(vec2<u32>(2339u, firstTrailingBit(1u)), ~firstLeadingBit(vec3<u32>(reverseBits(6786u), _wgslsmith_div_u32(global3.a.x, u_input.b), select(global1.a.x, u_input.b, global1.c.x))), global1.c, global3.d);
    var var_1 = _wgslsmith_sub_i32(abs(u_input.a.x), -2147483647i);
    global0 = _wgslsmith_mult_u32(~(0u | ~u_input.b), reverseBits(_wgslsmith_dot_vec3_u32(global1.b, vec3<u32>(37197u, 0u, u_input.b))) ^ reverseBits(abs(94010u))) & ~abs(34716u);
    var_1 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(global1.d.x, ~(~global1.b), ~(vec2<u32>(global3.b.x, _wgslsmith_dot_vec3_u32(global3.b, global3.b)) << (global1.a % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.d.yy) - _wgslsmith_f_op_vec2_f32(global3.d.zy + vec2<f32>(-817f, -1000f))) * _wgslsmith_div_vec2_f32(global3.d.yy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.d.x, 1745f)))))), global1.b.x);
}

