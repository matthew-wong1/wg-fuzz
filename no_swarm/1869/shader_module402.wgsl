struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<bool>, 17>;

var<private> global2: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(-1948f, -1290f, 1114f, 542f), vec4<f32>(1370f, -1000f, 484f, 369f), vec4<f32>(-253f, -662f, 243f, -1018f), vec4<f32>(-151f, 424f, 463f, 1000f), vec4<f32>(-420f, -1457f, -1685f, 193f), vec4<f32>(-1322f, -1953f, -957f, 596f), vec4<f32>(779f, -863f, 221f, -1486f), vec4<f32>(438f, 1969f, 2207f, 643f), vec4<f32>(-1535f, -314f, 989f, 398f), vec4<f32>(-390f, -2123f, 1000f, 938f), vec4<f32>(-1511f, -1212f, 1910f, 1000f), vec4<f32>(296f, 513f, 141f, 1404f), vec4<f32>(1000f, 395f, 845f, 1831f), vec4<f32>(1432f, 702f, 1000f, -1160f), vec4<f32>(899f, 1989f, -1015f, 120f), vec4<f32>(689f, -1188f, -531f, -100f), vec4<f32>(103f, 605f, 1416f, 315f));

var<private> global3: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(vec2<f32>(969f, -1000f), vec4<u32>(1u, 0u, 1u, 8212u), -1i, 44633u, i32(-2147483648)), Struct_2(vec2<f32>(1220f, 1000f), vec4<u32>(1u, 9274u, 57154u, 0u), 0i, 18502u, i32(-2147483648)), Struct_2(vec2<f32>(-1684f, 142f), vec4<u32>(23760u, 48683u, 12476u, 0u), 23856i, 7296u, -11375i), Struct_2(vec2<f32>(-523f, -132f), vec4<u32>(7289u, 56553u, 18893u, 4918u), -1i, 4294967295u, 22676i), Struct_2(vec2<f32>(-934f, 1265f), vec4<u32>(12647u, 1u, 4294967295u, 0u), -1i, 1u, 59080i), Struct_2(vec2<f32>(2324f, 2211f), vec4<u32>(62757u, 80289u, 56242u, 27501u), 0i, 1u, -5104i), Struct_2(vec2<f32>(-704f, 1432f), vec4<u32>(1u, 1u, 4294967295u, 17826u), -1i, 4294967295u, 3605i), Struct_2(vec2<f32>(315f, -402f), vec4<u32>(1u, 1u, 26099u, 0u), 2147483647i, 0u, 22208i), Struct_2(vec2<f32>(2715f, 867f), vec4<u32>(4294967295u, 2675u, 77328u, 0u), 0i, 4294967295u, -67730i), Struct_2(vec2<f32>(801f, -743f), vec4<u32>(0u, 9987u, 64945u, 28472u), 5361i, 1835u, -42637i), Struct_2(vec2<f32>(-1305f, -1221f), vec4<u32>(123203u, 12904u, 0u, 4294967295u), i32(-2147483648), 43477u, -1i), Struct_2(vec2<f32>(1000f, 839f), vec4<u32>(1u, 64752u, 4294967295u, 26243u), 10055i, 1u, 1i), Struct_2(vec2<f32>(150f, 1052f), vec4<u32>(24518u, 19944u, 0u, 4294967295u), i32(-2147483648), 39239u, 2711i), Struct_2(vec2<f32>(-797f, -1230f), vec4<u32>(68601u, 71648u, 4294967295u, 82028u), -17786i, 4294967295u, -40771i), Struct_2(vec2<f32>(1252f, 930f), vec4<u32>(4294967295u, 2323u, 4294967295u, 4294967295u), 31316i, 0u, 1i), Struct_2(vec2<f32>(1374f, 1133f), vec4<u32>(1u, 74661u, 36042u, 96959u), -57730i, 42581u, i32(-2147483648)), Struct_2(vec2<f32>(1151f, -883f), vec4<u32>(4294967295u, 47266u, 4294967295u, 4294967295u), 1i, 1u, i32(-2147483648)), Struct_2(vec2<f32>(-609f, -716f), vec4<u32>(76570u, 103980u, 0u, 0u), -9007i, 34130u, 2147483647i), Struct_2(vec2<f32>(-905f, -893f), vec4<u32>(0u, 1u, 35354u, 0u), 0i, 17106u, 1i), Struct_2(vec2<f32>(1839f, 1007f), vec4<u32>(1u, 36593u, 47230u, 0u), 13776i, 0u, 31661i), Struct_2(vec2<f32>(290f, -2393f), vec4<u32>(1u, 1u, 73541u, 4294967295u), -74936i, 23441u, 2147483647i), Struct_2(vec2<f32>(-1000f, 1379f), vec4<u32>(15621u, 23486u, 50843u, 1u), -58880i, 46506u, -1i), Struct_2(vec2<f32>(561f, -1400f), vec4<u32>(4294967295u, 0u, 63861u, 0u), 2147483647i, 398u, -1i), Struct_2(vec2<f32>(1000f, 2007f), vec4<u32>(0u, 38038u, 37061u, 4294967295u), 1i, 23086u, -1i));

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    global2 = array<vec4<f32>, 17>();
    let var_0 = global4.b.yzz;
    let var_1 = _wgslsmith_f_op_f32(-global4.a.x);
    let var_2 = ~vec4<u32>(0u, min(4294967295u, u_input.d.x), 118u, 70832u);
    let var_3 = abs(~0u);
    return ~149990u;
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: Struct_2) -> f32 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x - -401f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global4.a.x, _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(arg_2.a.x + _wgslsmith_f_op_f32(-362f * global4.a.x))), 2935f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-371f - _wgslsmith_f_op_f32(-global4.a.x)) + _wgslsmith_f_op_f32(-897f + arg_0.x))), select(!vec4<bool>(arg_1.x <= -28111i, any(global1[_wgslsmith_index_u32(29021u, 17u)]), true, true), select(!(!global1[_wgslsmith_index_u32(arg_2.b.x, 17u)]), vec4<bool>(true, global4.b.x & false, true, any(global4.b)), global4.b.x), select(select(global4.b, !global1[_wgslsmith_index_u32(arg_2.d, 17u)], true), !select(vec4<bool>(global4.b.x, true, false, false), vec4<bool>(global4.b.x, true, true, true), global1[_wgslsmith_index_u32(4294967295u, 17u)]), !global4.b.x)));
    global3 = array<Struct_2, 24>();
    global3 = array<Struct_2, 24>();
    var var_1 = !all(select(global4.b.yzw, vec3<bool>(true, 1260f <= arg_0.x, true), false));
    var var_2 = -126f;
    return 961f;
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = vec2<i32>(2147483647i, -1i);
    global2 = array<vec4<f32>, 17>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a.x, global4.a.x, arg_1.a.x, global4.a.x) - global4.a)) + vec4<f32>(global4.a.x, global4.a.x, _wgslsmith_f_op_f32(709f - arg_1.a.x), _wgslsmith_f_op_f32(-788f + global4.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global4.a * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, global4.a.x, -311f, arg_1.a.x)))), all(select(global4.b.wwx, global4.b.wxy, global4.b.wyw)) | all(!global4.b.xy))), !(!select(global4.b, global4.b, false)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_1.a.x, var_1.a.x)))), _wgslsmith_f_op_f32(func_3(vec2<f32>(-781f, 1133f), var_0, global3[_wgslsmith_index_u32(0u, 24u)])), _wgslsmith_f_op_f32(-1203f - arg_1.a.x))), vec4<bool>(!all(!vec4<bool>(var_1.b.x, false, true, global4.b.x)), !global4.b.x, true, var_1.b.x));
    global0 = 34585u;
    return Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.a.x, var_2.a.x))) - arg_1.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.a.x, arg_1.a.x), _wgslsmith_f_op_vec2_f32(-var_1.a.yy))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a))))), u_input.d, 7050i, 65895u, ~u_input.c);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global4.a.x), 1046f, 1588f, 1f)) * vec4<f32>(630f, _wgslsmith_f_op_f32(sign(arg_2.a.x)), _wgslsmith_f_op_f32(round(-530f)), -400f)), !select(select(select(global4.b, vec4<bool>(global4.b.x, true, arg_0.b.x, true), global4.b), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_2.b.x, 1u), 17u)], true), vec4<bool>(true, arg_0.b.x || false, true, arg_0.b.x), select(!arg_0.b, !arg_0.b, !global4.b)));
    return _wgslsmith_div_i32(abs(-arg_2.c), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 17>();
    let var_0 = func_4(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global4.a * _wgslsmith_f_op_vec4_f32(-vec4<f32>(282f, global4.a.x, -668f, global4.a.x))), vec4<f32>(_wgslsmith_f_op_f32(min(global4.a.x, -1591f)), 1000f, global4.a.x, global4.a.x)), global4.b), -2147483647i, func_2(~func_1(~u_input.d.zy), global3[_wgslsmith_index_u32(~(_wgslsmith_div_u32(u_input.b, u_input.b) >> (~1u % 32u)), 24u)]));
    global4 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-667f * 497f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global4.a.x, 254f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global4.a.x - _wgslsmith_f_op_f32(func_3(vec2<f32>(564f, global4.a.x), vec2<i32>(-1i, -1i), global3[_wgslsmith_index_u32(u_input.b, 24u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.x)))), select(global4.b, !select(select(vec4<bool>(false, false, false, global4.b.x), global4.b, global4.b.x), !global1[_wgslsmith_index_u32(120307u, 17u)], any(global4.b.xz)), global4.b.x));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(func_2(1u, Struct_2(vec2<f32>(global4.a.x, global4.a.x), vec4<u32>(4294967295u, u_input.b, 0u, 0u), 2147483647i, u_input.b, var_0)).a, vec2<f32>(global4.a.x, global4.a.x))) * _wgslsmith_f_op_vec2_f32(-global4.a.xy)), abs(select(vec4<u32>(select(23195u, u_input.d.x, global4.b.x), ~13919u, _wgslsmith_mult_u32(u_input.d.x, 21997u), abs(u_input.d.x)), abs(~vec4<u32>(73838u, u_input.b, 4294967295u, u_input.b)), (var_0 | u_input.c) == _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -15121i, 0i), u_input.a.yzx))), -2147483647i, u_input.b, -1i);
    global4 = Struct_1(global4.a, global1[_wgslsmith_index_u32(~3080u, 17u)]);
    global1 = array<vec4<bool>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_dot_vec4_u32(~countOneBits(u_input.d), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b, 0u, 119585u, 4294967295u), vec4<u32>(var_1.b.x, 89105u, var_1.d, var_1.d), ~u_input.d)), min(_wgslsmith_add_u32(15774u >> (u_input.b % 32u), ~0u), var_1.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global4.a.zy + vec2<f32>(var_1.a.x, var_1.a.x)) - _wgslsmith_f_op_vec2_f32(var_1.a + var_1.a)), u_input.a.zz, Struct_2(vec2<f32>(-1067f, 1000f), abs(vec4<u32>(29639u, u_input.d.x, 1u, var_1.b.x)), 77076i, ~25128u, countOneBits(56931i)))) * _wgslsmith_f_op_f32(-global4.a.x)), vec3<i32>(_wgslsmith_mod_i32(var_0, ~var_0) | -u_input.c, ~(-39637i), _wgslsmith_mult_i32(2147483647i, -(var_0 >> (4294967295u % 32u)))), u_input.d.x);
}

