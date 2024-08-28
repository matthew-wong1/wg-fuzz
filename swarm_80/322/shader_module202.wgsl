struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: vec4<i32>,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_2;

var<private> global2: Struct_1;

var<private> global3: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(43721u, 0u), false, false, Struct_1(4294967295u, 71802u), vec3<u32>(21516u, 52750u, 19021u)), Struct_2(Struct_1(4294967295u, 42476u), false, false, Struct_1(31906u, 4294967295u), vec3<u32>(21037u, 105774u, 16063u)), Struct_2(Struct_1(43159u, 29161u), false, true, Struct_1(132763u, 88563u), vec3<u32>(0u, 1u, 13150u)), Struct_2(Struct_1(56366u, 4294967295u), false, false, Struct_1(1u, 24523u), vec3<u32>(1u, 60679u, 66173u)), Struct_2(Struct_1(87044u, 0u), true, true, Struct_1(4294967295u, 29255u), vec3<u32>(10057u, 4294967295u, 92536u)), Struct_2(Struct_1(17903u, 8517u), false, true, Struct_1(6943u, 0u), vec3<u32>(1u, 15951u, 26186u)), Struct_2(Struct_1(37625u, 1u), true, true, Struct_1(36410u, 0u), vec3<u32>(25853u, 0u, 4294967295u)), Struct_2(Struct_1(38695u, 4294967295u), true, false, Struct_1(17815u, 3247u), vec3<u32>(9248u, 0u, 7189u)), Struct_2(Struct_1(8379u, 1u), false, false, Struct_1(0u, 66355u), vec3<u32>(1u, 0u, 75100u)), Struct_2(Struct_1(40371u, 4662u), true, true, Struct_1(0u, 4294967295u), vec3<u32>(0u, 489u, 4294967295u)), Struct_2(Struct_1(0u, 0u), true, true, Struct_1(0u, 0u), vec3<u32>(65349u, 0u, 1u)), Struct_2(Struct_1(50835u, 8966u), false, false, Struct_1(0u, 93323u), vec3<u32>(4294967295u, 4294967295u, 9299u)), Struct_2(Struct_1(24836u, 1u), false, true, Struct_1(61561u, 0u), vec3<u32>(48938u, 1u, 58640u)), Struct_2(Struct_1(1u, 1u), true, true, Struct_1(0u, 1u), vec3<u32>(0u, 25869u, 12033u)), Struct_2(Struct_1(0u, 4294967295u), true, false, Struct_1(27061u, 386u), vec3<u32>(4294967295u, 897u, 6331u)), Struct_2(Struct_1(0u, 52390u), false, true, Struct_1(25319u, 7176u), vec3<u32>(4294967295u, 4795u, 0u)), Struct_2(Struct_1(6219u, 32273u), false, true, Struct_1(4294967295u, 18975u), vec3<u32>(5701u, 4294967295u, 4294967295u)), Struct_2(Struct_1(32460u, 1u), false, false, Struct_1(0u, 1u), vec3<u32>(0u, 1u, 111939u)), Struct_2(Struct_1(0u, 1u), false, true, Struct_1(0u, 31211u), vec3<u32>(4294967295u, 0u, 20634u)), Struct_2(Struct_1(2412u, 4294967295u), false, false, Struct_1(0u, 0u), vec3<u32>(51308u, 0u, 36348u)), Struct_2(Struct_1(54622u, 23000u), false, false, Struct_1(63696u, 1u), vec3<u32>(4294967295u, 20647u, 0u)), Struct_2(Struct_1(34802u, 28386u), false, false, Struct_1(4294967295u, 75021u), vec3<u32>(49704u, 4294967295u, 43651u)), Struct_2(Struct_1(4294967295u, 49671u), false, true, Struct_1(43280u, 0u), vec3<u32>(4294967295u, 4294967295u, 75250u)), Struct_2(Struct_1(4294967295u, 1u), true, false, Struct_1(4294967295u, 10866u), vec3<u32>(32122u, 1u, 39070u)), Struct_2(Struct_1(0u, 0u), true, false, Struct_1(4294967295u, 35362u), vec3<u32>(21521u, 15360u, 0u)), Struct_2(Struct_1(14482u, 4294967295u), false, true, Struct_1(1u, 4294967295u), vec3<u32>(0u, 0u, 29648u)), Struct_2(Struct_1(52409u, 4186u), true, false, Struct_1(0u, 50155u), vec3<u32>(0u, 8757u, 1u)));

var<private> global4: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(43294u, 1u), Struct_1(27753u, 4294967295u), Struct_1(4294967295u, 41531u), Struct_1(4294967295u, 4294967295u), Struct_1(37477u, 21171u), Struct_1(75034u, 22904u), Struct_1(0u, 4294967295u), Struct_1(4294967295u, 1u), Struct_1(0u, 24141u), Struct_1(0u, 4294967295u), Struct_1(0u, 48501u), Struct_1(97227u, 51541u), Struct_1(1u, 17729u), Struct_1(36049u, 0u), Struct_1(42097u, 0u), Struct_1(50780u, 0u), Struct_1(16943u, 109297u), Struct_1(1u, 106152u), Struct_1(4294967295u, 4294967295u), Struct_1(20068u, 94967u), Struct_1(0u, 21774u), Struct_1(4294967295u, 0u), Struct_1(1u, 1u), Struct_1(1u, 75713u), Struct_1(54338u, 39139u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: bool) -> i32 {
    var var_0 = vec4<bool>(!any(!(!vec4<bool>(true, false, arg_2, global1.c))), !all(!vec3<bool>(false, arg_2, true)), arg_2, !arg_2);
    global0 = select(~(~u_input.b), u_input.c, !select(var_0.xyw, !select(var_0.ywy, var_0.wwz, vec3<bool>(true, false, false)), true));
    global3 = array<Struct_2, 27>();
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2624f, -1819f)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(638f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -931f)))))));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(1892f + _wgslsmith_f_op_f32(-var_1.x))))));
    return _wgslsmith_sub_i32(-1i, -min(_wgslsmith_clamp_i32(-24882i, arg_0.x, -71918i) >> (1u % 32u), abs(arg_0.x)));
}

fn func_2(arg_0: i32) -> Struct_2 {
    global2 = global1.d;
    var var_0 = select(global1.c, false, min(func_3(countOneBits(global0.zx), Struct_3(vec4<u32>(global2.b, u_input.a.x, 39406u, u_input.a.x)), global1.b), _wgslsmith_sub_i32(0i, global0.x) | func_3(vec2<i32>(global0.x, arg_0), Struct_3(vec4<u32>(15017u, u_input.a.x, global2.a, 2118u)), global1.c)) != firstTrailingBit(_wgslsmith_sub_i32(global0.x, global0.x) ^ _wgslsmith_mod_i32(-1487i, arg_0)));
    let var_1 = Struct_5(select(vec2<bool>(true, true), vec2<bool>(global1.b, all(select(vec4<bool>(true, true, true, true), vec4<bool>(global1.c, global1.b, false, global1.b), global1.b))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(908f, 1029f)))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-737f, -291f)), _wgslsmith_f_op_f32(trunc(-976f)))));
    let var_2 = Struct_3(vec4<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, global1.a.a) << (vec2<u32>(4294967295u, global1.e.x) % vec2<u32>(32u)), ~global1.e.yx, !var_1.a), vec2<u32>(_wgslsmith_dot_vec3_u32(global1.e, global1.e), _wgslsmith_mod_u32(global2.a, 4294967295u))), ~global1.e.x, countOneBits(abs(global1.e.x)), 30668u));
    var var_3 = ~(~(global1.e.x ^ _wgslsmith_dot_vec3_u32(var_2.a.zxw, vec3<u32>(u_input.a.x, global2.a, 0u)))) >= global1.d.a;
    return global3[_wgslsmith_index_u32(var_2.a.x | var_2.a.x, 27u)];
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -870f)));
    global1 = func_2(u_input.c.x);
    let var_1 = true;
    return ~(14042u | abs(~arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(~global1.a.a, 0u), global1.b, firstTrailingBit(firstTrailingBit(~u_input.a.x)) > global2.b, Struct_1(~(~7464u | u_input.a.x), 40159u), vec3<u32>(countOneBits(func_1(vec2<u32>(0u, 65168u) ^ global1.e.yy, Struct_1(4294967295u, global2.a))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~u_input.a, vec2<u32>(u_input.a.x, global2.a)), global2.b | (global1.e.x ^ u_input.a.x), func_1(global1.e.zx, Struct_1(u_input.a.x, global1.a.b)) & 45586u), _wgslsmith_sub_u32(firstTrailingBit(~1u), ~54148u)));
    var var_1 = vec4<bool>(var_0.b, true | !global1.b, true, all(select(vec2<bool>(true, true), !(!vec2<bool>(var_0.c, global1.b)), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(global1.c, false)))));
    var var_2 = firstLeadingBit(global2.a);
    let var_3 = Struct_3(~vec4<u32>(global2.b, 1u, global2.b, abs(u_input.a.x)));
    var_1 = !vec4<bool>(var_0.b, all(!var_1.zz), select(false, true, true), true);
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1595f + -2221f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(969f - -563f)))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-827f, _wgslsmith_f_op_f32(ceil(-1404f)))))));
    let var_5 = Struct_5(vec2<bool>(true, global2.a == ~42000u));
    var_1 = vec4<bool>(global1.b, !(-1783f >= _wgslsmith_f_op_f32(max(-995f, _wgslsmith_f_op_f32(sign(var_4))))), true, var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x >> (var_0.e.x % 32u));
}

