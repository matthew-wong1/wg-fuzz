struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 18> = array<vec4<i32>, 18>(vec4<i32>(-2686i, 2147483647i, -12971i, i32(-2147483648)), vec4<i32>(-15163i, 1i, 23086i, 18418i), vec4<i32>(2147483647i, 2147483647i, -53290i, -1i), vec4<i32>(24812i, -1i, 0i, 1i), vec4<i32>(-37748i, 1i, -1i, 0i), vec4<i32>(0i, -31659i, 12238i, -7790i), vec4<i32>(-26947i, 2147483647i, i32(-2147483648), 3245i), vec4<i32>(-32704i, 25771i, i32(-2147483648), 1i), vec4<i32>(19556i, i32(-2147483648), 37625i, 1i), vec4<i32>(-1236i, 19426i, i32(-2147483648), 14258i), vec4<i32>(12966i, 645i, -11708i, -49847i), vec4<i32>(1i, -24498i, -15284i, 2147483647i), vec4<i32>(2147483647i, 70533i, i32(-2147483648), 16998i), vec4<i32>(-1i, 2147483647i, 1813i, 57964i), vec4<i32>(38573i, 2147483647i, 2147483647i, -1i), vec4<i32>(0i, 1i, 2147483647i, 2147483647i), vec4<i32>(0i, 2147483647i, -944i, 1i), vec4<i32>(-3777i, i32(-2147483648), 18018i, -1i));

var<private> global1: Struct_5;

var<private> global2: array<u32, 13>;

var<private> global3: array<Struct_5, 14> = array<Struct_5, 14>(Struct_5(vec2<u32>(67627u, 46117u), 144f), Struct_5(vec2<u32>(1u, 4294967295u), 248f), Struct_5(vec2<u32>(61625u, 74293u), 314f), Struct_5(vec2<u32>(0u, 46476u), 1138f), Struct_5(vec2<u32>(0u, 4294967295u), -357f), Struct_5(vec2<u32>(38891u, 4294967295u), -583f), Struct_5(vec2<u32>(0u, 0u), 989f), Struct_5(vec2<u32>(1u, 0u), 101f), Struct_5(vec2<u32>(0u, 1u), -1090f), Struct_5(vec2<u32>(10984u, 23998u), -819f), Struct_5(vec2<u32>(84464u, 4294967295u), 1082f), Struct_5(vec2<u32>(4294967295u, 34813u), -331f), Struct_5(vec2<u32>(67467u, 0u), 510f), Struct_5(vec2<u32>(27978u, 0u), -1000f));

var<private> global4: array<Struct_1, 28>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec3<u32> {
    var var_0 = global3[_wgslsmith_index_u32(max(67363u, ~abs(global1.a.x)), 14u)];
    let var_1 = max(-5822i, ~34773i);
    var var_2 = Struct_4(select(true, all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), true) || (_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -589f))) >= _wgslsmith_f_op_f32(-var_0.b)), ~(~u_input.c.yzz), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + var_0.b))), reverseBits(_wgslsmith_sub_i32(var_1, var_1) ^ -22644i)));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(558f, var_2.c.a)))))), var_1);
    let var_4 = ~var_0.a.x;
    return u_input.d;
}

fn func_2(arg_0: Struct_5, arg_1: vec2<u32>) -> Struct_2 {
    global2 = array<u32, 13>();
    var var_0 = true;
    global1 = arg_0;
    var var_1 = ~select(-_wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(22176i, -22132i, 3559i), vec3<i32>(-2582i, 69043i, -47883i))), 54174i, any(vec2<bool>(true, true)));
    let var_2 = Struct_3(~u_input.a.xwx | ~func_3(), vec2<f32>(global1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1262f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b) * _wgslsmith_div_f32(2760f, global1.b)))), global4[_wgslsmith_index_u32(global1.a.x, 28u)], global4[_wgslsmith_index_u32(0u, 28u)]);
    return Struct_2(arg_0.b, _wgslsmith_mult_i32(1i, 1i) | -(-4737i >> (firstLeadingBit(var_2.a.x) % 32u)));
}

fn func_4(arg_0: Struct_4) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -355f);
    return arg_0;
}

fn func_1() -> Struct_2 {
    global0 = array<vec4<i32>, 18>();
    var var_0 = func_4(Struct_4(!(true & select(false, false, false)), abs(u_input.e.wyy), func_2(global3[_wgslsmith_index_u32(abs(43848u), 14u)], ~max(u_input.c.ww, vec2<u32>(u_input.a.x, global2[_wgslsmith_index_u32(global1.a.x, 13u)])))));
    let var_1 = var_0.a;
    global3 = array<Struct_5, 14>();
    var var_2 = func_4(Struct_4(any(!vec2<bool>(true, var_0.a)), var_0.b, var_0.c));
    return Struct_2(_wgslsmith_f_op_f32(step(var_0.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-486f + -849f)))), ~var_0.c.b);
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: Struct_4, arg_3: Struct_3) -> Struct_2 {
    let var_0 = func_4(func_4(Struct_4(false, (arg_2.b | u_input.c.yyy) | arg_2.b, func_1())));
    let var_1 = arg_3.d;
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(68056u, ~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.e.wz, ~(~global1.a)), 13u)], Struct_4(true, u_input.e.zyw, func_1()), Struct_3(~(vec3<u32>(64548u, global1.a.x, u_input.e.x) << (u_input.d % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-global1.b), -150f))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.b, global1.b, global1.b, global1.b))) + vec4<f32>(global1.b, 1462f, global1.b, global1.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -562f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(461f, -287f) + vec2<f32>(1521f, global1.b)))), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.b, 1332f, global1.b, global1.b))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -543f), _wgslsmith_f_op_f32(abs(global1.b))))));
    global4 = array<Struct_1, 28>();
    var_0 = Struct_2(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_mod_i32(var_0.b, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 10397i, -1i), vec3<i32>(63259i, var_0.b, 1i)) | countOneBits(0i), ~firstTrailingBit(-2147483647i))));
    var var_1 = Struct_3(vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(~select(vec3<u32>(global1.a.x, 0u, global1.a.x), u_input.e.zxy, vec3<bool>(false, true, true)), u_input.e.wzz), ~1u), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1438f, global1.b)))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), 359f, global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, -642f) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-491f, -656f) * vec2<f32>(var_0.a, global1.b)))))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, 810f, global1.b, -1729f) - vec4<f32>(1856f, 1994f, var_0.a, global1.b)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-210f, var_0.a, var_0.a, 1185f) + vec4<f32>(-487f, 1575f, var_0.a, global1.b))))), vec2<f32>(816f, global1.b)));
    var var_2 = 4294967295u >= global2[_wgslsmith_index_u32(~func_4(Struct_4(all(vec2<bool>(true, true)), ~u_input.a.wyx, func_1())).b.x, 13u)];
    var var_3 = Struct_5(~global1.a, var_1.d.b.x);
    let var_4 = global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(379f, firstLeadingBit(var_0.b));
}

