struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: bool,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11> = array<u32, 11>(0u, 20013u, 68170u, 1u, 4294967295u, 1u, 0u, 27414u, 1u, 39616u, 4294967295u);

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec2<i32>(-24450i, -13388i), vec2<bool>(true, false), false, 52952i, vec3<u32>(0u, 11020u, 1u)), Struct_1(vec2<i32>(-15191i, -36359i), vec2<bool>(true, true), false, i32(-2147483648), vec3<u32>(19274u, 17588u, 33340u)), Struct_1(vec2<i32>(1i, -70159i), vec2<bool>(false, false), true, 1i, vec3<u32>(18543u, 91173u, 0u)), Struct_1(vec2<i32>(15429i, 2147483647i), vec2<bool>(false, false), true, 54423i, vec3<u32>(14627u, 32473u, 4294967295u)), Struct_1(vec2<i32>(2147483647i, -10464i), vec2<bool>(false, false), true, 2147483647i, vec3<u32>(4294967295u, 1u, 31609u)), Struct_1(vec2<i32>(-1i, -1i), vec2<bool>(false, true), false, 0i, vec3<u32>(4294967295u, 49295u, 49103u)), Struct_1(vec2<i32>(-1i, 0i), vec2<bool>(true, true), false, 28906i, vec3<u32>(4978u, 36436u, 4294967295u)), Struct_1(vec2<i32>(-14458i, 0i), vec2<bool>(true, false), false, 49905i, vec3<u32>(40960u, 0u, 1u)), Struct_1(vec2<i32>(-21299i, 309i), vec2<bool>(false, false), true, 0i, vec3<u32>(28439u, 4294967295u, 102718u)), Struct_1(vec2<i32>(-12388i, i32(-2147483648)), vec2<bool>(true, false), false, -42794i, vec3<u32>(6416u, 70309u, 1u)), Struct_1(vec2<i32>(4353i, 2147483647i), vec2<bool>(true, true), false, -19049i, vec3<u32>(1u, 22963u, 36537u)), Struct_1(vec2<i32>(50341i, 1i), vec2<bool>(true, true), false, -12938i, vec3<u32>(57597u, 16440u, 1u)), Struct_1(vec2<i32>(51620i, 1i), vec2<bool>(false, false), false, 2147483647i, vec3<u32>(2255u, 1u, 0u)), Struct_1(vec2<i32>(2147483647i, -1i), vec2<bool>(false, true), false, 12779i, vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_1(vec2<i32>(-8695i, 0i), vec2<bool>(true, true), false, -1i, vec3<u32>(47353u, 4895u, 24044u)), Struct_1(vec2<i32>(18898i, 2147483647i), vec2<bool>(true, true), true, 2147483647i, vec3<u32>(1u, 0u, 107652u)), Struct_1(vec2<i32>(0i, -32630i), vec2<bool>(true, false), true, 10753i, vec3<u32>(1u, 1u, 1u)), Struct_1(vec2<i32>(-14957i, 0i), vec2<bool>(false, true), true, 17229i, vec3<u32>(37627u, 1u, 4294967295u)), Struct_1(vec2<i32>(0i, 51628i), vec2<bool>(false, false), false, 18855i, vec3<u32>(0u, 12296u, 1u)), Struct_1(vec2<i32>(2147483647i, 2147483647i), vec2<bool>(true, false), true, 10983i, vec3<u32>(21459u, 1u, 42933u)), Struct_1(vec2<i32>(-22727i, 0i), vec2<bool>(true, true), false, 1i, vec3<u32>(4294967295u, 4294967295u, 36896u)), Struct_1(vec2<i32>(10576i, -22230i), vec2<bool>(true, false), true, -8036i, vec3<u32>(1657u, 84214u, 51962u)), Struct_1(vec2<i32>(40717i, -18694i), vec2<bool>(true, false), false, i32(-2147483648), vec3<u32>(8651u, 0u, 9069u)), Struct_1(vec2<i32>(44416i, 2147483647i), vec2<bool>(false, true), true, 46008i, vec3<u32>(1u, 22267u, 4294967295u)), Struct_1(vec2<i32>(0i, -62120i), vec2<bool>(false, true), true, i32(-2147483648), vec3<u32>(4294967295u, 74995u, 22044u)), Struct_1(vec2<i32>(-40898i, 35187i), vec2<bool>(true, true), false, -23046i, vec3<u32>(4294967295u, 1u, 1u)), Struct_1(vec2<i32>(-52077i, 13129i), vec2<bool>(false, true), false, 20923i, vec3<u32>(76541u, 1u, 1u)));

var<private> global3: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec2<i32>(i32(-2147483648), 47045i), vec2<bool>(false, true), true, 14259i, vec3<u32>(0u, 0u, 25126u)), Struct_1(vec2<i32>(79721i, 52157i), vec2<bool>(true, false), true, i32(-2147483648), vec3<u32>(45651u, 4409u, 18551u)), Struct_1(vec2<i32>(-19645i, -17793i), vec2<bool>(true, false), true, 2147483647i, vec3<u32>(11970u, 52094u, 21447u)), Struct_1(vec2<i32>(-47163i, -21472i), vec2<bool>(true, false), true, 0i, vec3<u32>(4294967295u, 48657u, 35937u)), Struct_1(vec2<i32>(-41147i, 1i), vec2<bool>(true, false), true, -27004i, vec3<u32>(0u, 76571u, 127455u)), Struct_1(vec2<i32>(1i, 52858i), vec2<bool>(false, true), false, 73890i, vec3<u32>(57950u, 1u, 81214u)), Struct_1(vec2<i32>(-42683i, -46258i), vec2<bool>(false, true), false, 32747i, vec3<u32>(4024u, 5936u, 1u)), Struct_1(vec2<i32>(2147483647i, -30568i), vec2<bool>(false, false), true, 0i, vec3<u32>(0u, 4294967295u, 1u)), Struct_1(vec2<i32>(-15402i, 15726i), vec2<bool>(true, false), false, -1i, vec3<u32>(5909u, 24057u, 4294967295u)), Struct_1(vec2<i32>(41553i, -1i), vec2<bool>(false, false), true, 0i, vec3<u32>(52975u, 29417u, 77339u)), Struct_1(vec2<i32>(-5109i, -36051i), vec2<bool>(true, true), false, 1i, vec3<u32>(4294967295u, 6965u, 20784u)), Struct_1(vec2<i32>(-21496i, -10191i), vec2<bool>(false, true), false, -1i, vec3<u32>(4294967295u, 1u, 28784u)), Struct_1(vec2<i32>(16486i, -50943i), vec2<bool>(true, false), true, -39117i, vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_1(vec2<i32>(-1i, -12830i), vec2<bool>(true, true), false, 2147483647i, vec3<u32>(0u, 0u, 28742u)), Struct_1(vec2<i32>(i32(-2147483648), 20377i), vec2<bool>(true, false), false, -32126i, vec3<u32>(16166u, 1u, 51032u)), Struct_1(vec2<i32>(0i, -36460i), vec2<bool>(false, false), true, 1i, vec3<u32>(4294967295u, 38882u, 43147u)), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec2<bool>(false, false), true, 5822i, vec3<u32>(0u, 26284u, 4294967295u)), Struct_1(vec2<i32>(-41919i, 2147483647i), vec2<bool>(true, false), false, i32(-2147483648), vec3<u32>(24739u, 105234u, 0u)), Struct_1(vec2<i32>(-99777i, 0i), vec2<bool>(true, false), false, -74385i, vec3<u32>(32303u, 14571u, 50773u)), Struct_1(vec2<i32>(-10439i, -62600i), vec2<bool>(false, false), true, 1i, vec3<u32>(0u, 1u, 0u)), Struct_1(vec2<i32>(-1920i, -50575i), vec2<bool>(false, true), false, 1i, vec3<u32>(0u, 4693u, 24488u)), Struct_1(vec2<i32>(0i, -1i), vec2<bool>(false, true), false, 0i, vec3<u32>(16395u, 89889u, 1u)), Struct_1(vec2<i32>(1i, 33914i), vec2<bool>(true, true), false, -27477i, vec3<u32>(4294967295u, 36945u, 1u)), Struct_1(vec2<i32>(70614i, -70057i), vec2<bool>(true, true), false, 18340i, vec3<u32>(0u, 1u, 4346u)), Struct_1(vec2<i32>(-1i, 1i), vec2<bool>(true, false), false, 2147483647i, vec3<u32>(45163u, 13775u, 1u)), Struct_1(vec2<i32>(-37799i, -1i), vec2<bool>(false, true), false, 11633i, vec3<u32>(21430u, 10513u, 1u)), Struct_1(vec2<i32>(-1i, -1i), vec2<bool>(true, false), true, 51882i, vec3<u32>(0u, 46890u, 6618u)), Struct_1(vec2<i32>(44811i, -1i), vec2<bool>(false, false), true, -27765i, vec3<u32>(4294967295u, 13635u, 0u)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>) -> vec4<bool> {
    var var_0 = vec4<bool>(!arg_0.x, global1.x && !global1.x, ~u_input.d.x >= u_input.d.x, true && global1.x);
    return !(!(!vec4<bool>(false, true, var_0.x || global1.x, var_0.x)));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = select(vec4<bool>(!(!global1.x), true, arg_0.x == any(!vec4<bool>(true, false, global1.x, arg_0.x)), true), func_3(vec3<bool>(any(!vec2<bool>(false, arg_0.x)), arg_0.x, true)), select(!select(vec4<bool>(global1.x, false, false, global1.x), !vec4<bool>(global1.x, arg_0.x, false, false), true), vec4<bool>(func_3(select(vec3<bool>(global1.x, true, true), vec3<bool>(arg_0.x, arg_0.x, false), global1.x)).x, true, any(!vec4<bool>(global1.x, global1.x, false, global1.x)), false), func_3(vec3<bool>(true, any(arg_0), global1.x))));
    var var_1 = !arg_0.x;
    let var_2 = false;
    let var_3 = Struct_1(-vec2<i32>(_wgslsmith_div_i32(u_input.a.x, u_input.e.x) ^ u_input.a.x, -43255i), !select(vec2<bool>(true, true), arg_0, vec2<bool>(all(vec3<bool>(var_2, true, true)), var_2)), !global1.x, 0i, ~vec3<u32>(~1u, _wgslsmith_mod_u32(u_input.d.x, 30174u), u_input.c));
    global0 = array<u32, 11>();
    return var_3;
}

fn func_1() -> Struct_1 {
    global0 = array<u32, 11>();
    global3 = array<Struct_1, 28>();
    return func_2(vec2<bool>(true, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_1(~vec2<i32>(~(~(-1i)), _wgslsmith_clamp_i32(-20266i, ~3834i, ~(-1i))), vec2<bool>(var_0.a.x <= u_input.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-880f, -385f))) >= 136f), false & global1.x, abs(~5842i), abs(~func_1().e));
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-1138f, 768f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-734f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-974f, 400f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 1254f), vec2<f32>(-659f, 372f))))))));
    global1 = vec2<bool>(false, ~u_input.b > _wgslsmith_div_i32(-5432i, abs(var_0.a.x)));
    global2 = array<Struct_1, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, 480f)))), firstLeadingBit(~max(~var_0.a.x, var_0.a.x)), u_input.c);
}

