struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: i32, arg_3: f32) -> f32 {
    let var_0 = vec4<u32>(abs(u_input.a.x), firstTrailingBit(arg_1.x), select(_wgslsmith_div_u32(1u, 7614u), 4294967295u, any(vec2<bool>(true, true))) & ~51692u, ~arg_1.x);
    let var_1 = vec3<bool>(select(true, false, _wgslsmith_f_op_f32(trunc(851f)) <= arg_3), true, all(global0[_wgslsmith_index_u32(116351u, 8u)]));
    global0 = array<vec3<bool>, 8>();
    global0 = array<vec3<bool>, 8>();
    var var_2 = !(!(!var_1.x)) || !var_1.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3, -1000f)) - -1428f), -665f));
}

fn func_2() -> Struct_1 {
    global0 = array<vec3<bool>, 8>();
    return Struct_1(abs(vec3<u32>(u_input.a.x, ~u_input.a.x, 1u)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-41370i, u_input.a.zyx, -38640i, -1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -126f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -225f), -205f))))), all(vec3<bool>(true, all(vec2<bool>(true, true)), true)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = !select(select(!(!vec2<bool>(arg_0.c, arg_1.c)), !select(vec2<bool>(arg_1.c, true), vec2<bool>(arg_2.c, false), vec2<bool>(false, arg_1.c)), func_2().c), !vec2<bool>(true, !arg_1.c), true);
    let var_1 = arg_2;
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> vec2<bool> {
    var var_0 = true & arg_1.b.c;
    var_0 = all(vec3<bool>(arg_1.a, arg_0.c, false));
    var var_1 = firstTrailingBit(0u);
    var var_2 = func_4(func_4(func_4(func_4(func_4(Struct_1(vec3<u32>(1u, 1u, 0u), arg_1.b.b, arg_0.c), Struct_1(vec3<u32>(13694u, 69785u, 8935u), vec3<f32>(1034f, 639f, arg_0.b.x), arg_1.a), arg_1.b), func_2(), func_4(Struct_1(vec3<u32>(arg_1.b.a.x, arg_2, 11583u), vec3<f32>(arg_1.b.b.x, arg_0.b.x, -321f), true), arg_0, arg_0)), arg_1.b, func_4(func_4(Struct_1(vec3<u32>(arg_2, 1u, arg_1.b.a.x), arg_1.b.b, arg_1.a), arg_0, Struct_1(u_input.a.zwz, arg_0.b, arg_1.a)), func_4(Struct_1(arg_0.a, arg_1.b.b, arg_1.a), arg_0, Struct_1(vec3<u32>(arg_2, u_input.a.x, 1u), vec3<f32>(715f, arg_1.b.b.x, 1309f), arg_0.c)), func_2())), func_2(), arg_1.b), Struct_1(u_input.a.zyw, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.x, -273f)), _wgslsmith_f_op_f32(abs(arg_1.b.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.b.x), _wgslsmith_f_op_f32(-2001f - arg_0.b.x))), arg_0.c), arg_0);
    var var_3 = ~_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(_wgslsmith_mod_u32(1u, 22413u), 1u, 4294967295u, ~arg_1.b.a.x) >> (u_input.a % vec4<u32>(32u)));
    return vec2<bool>(true, arg_1.b.c);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = func_5(func_4(func_2(), func_2(), func_2()), Struct_2(false, Struct_1(u_input.a.wwx, vec3<f32>(_wgslsmith_div_f32(1280f, 207f), _wgslsmith_f_op_f32(-arg_1.x), -646f), all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))))), ~1u);
    let var_1 = vec3<bool>(true, var_0.x, !(56094u < arg_0.x));
    let var_2 = Struct_2(select(!(_wgslsmith_f_op_f32(max(arg_1.x, 184f)) >= func_4(Struct_1(u_input.a.wzy, vec3<f32>(arg_1.x, -999f, arg_1.x), var_0.x), Struct_1(u_input.a.wyz, vec3<f32>(215f, arg_1.x, arg_1.x), true), Struct_1(u_input.a.wyy, arg_1, var_0.x)).b.x), var_1.x, all(!func_5(Struct_1(u_input.a.xzz, vec3<f32>(-1647f, 1000f, 756f), var_1.x), Struct_2(var_1.x, Struct_1(u_input.a.wyx, vec3<f32>(arg_1.x, 344f, 534f), var_0.x)), 0u))), Struct_1(u_input.a.xzx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_1, arg_1, var_1))) + arg_1), func_4(func_4(func_4(Struct_1(u_input.a.wxx, arg_1, var_1.x), Struct_1(vec3<u32>(4294967295u, arg_0.x, arg_0.x), arg_1, var_0.x), Struct_1(u_input.a.ywy, arg_1, false)), Struct_1(vec3<u32>(18116u, 4294967295u, 4294967295u), vec3<f32>(arg_1.x, 814f, arg_1.x), true), func_2()), func_4(func_2(), func_4(Struct_1(vec3<u32>(119276u, u_input.a.x, 0u), vec3<f32>(arg_1.x, -1747f, arg_1.x), false), Struct_1(vec3<u32>(arg_0.x, u_input.c.x, 0u), arg_1, false), Struct_1(vec3<u32>(u_input.c.x, 24031u, u_input.a.x), arg_1, var_1.x)), func_4(Struct_1(vec3<u32>(arg_0.x, u_input.a.x, 21824u), arg_1, true), Struct_1(vec3<u32>(u_input.c.x, u_input.a.x, 4294967295u), vec3<f32>(arg_1.x, arg_1.x, arg_1.x), var_0.x), Struct_1(vec3<u32>(1u, 4294967295u, 0u), vec3<f32>(-200f, arg_1.x, arg_1.x), false))), Struct_1(vec3<u32>(57393u, arg_0.x, arg_0.x), arg_1, !var_0.x)).c));
    var var_3 = u_input.a;
    let var_4 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-902f, _wgslsmith_div_f32(func_4(func_4(Struct_1(vec3<u32>(arg_0.x, var_2.b.a.x, var_3.x), vec3<f32>(-335f, 247f, 724f), var_0.x), Struct_1(vec3<u32>(4294967295u, var_3.x, 76904u), arg_1, var_1.x), var_2.b), var_2.b, var_2.b).b.x, func_4(Struct_1(vec3<u32>(u_input.c.x, arg_0.x, 0u), arg_1, var_0.x), Struct_1(vec3<u32>(12411u, u_input.c.x, arg_0.x), arg_1, false), var_2.b).b.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f + -1000f), 975f)))));
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(reverseBits(vec2<u32>(u_input.a.x, abs(1u << (u_input.c.x % 32u)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) + 792f), 1884f, 772f));
    global0 = array<vec3<bool>, 8>();
    var var_1 = Struct_1(abs(~(vec3<u32>(21169u, 43764u, u_input.c.x) >> (select(vec3<u32>(39046u, 1u, 18868u), vec3<u32>(u_input.c.x, var_0.a.x, 63602u), vec3<bool>(true, true, var_0.c)) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, _wgslsmith_f_op_f32(trunc(var_0.b.x)), -841f), var_0.b)) * _wgslsmith_f_op_vec3_f32(-var_0.b)), var_0.c);
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(1072f, var_0.b.x, true)), -2156f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) + var_1.b.x) * func_2().b.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.b.x)), -1306f, _wgslsmith_div_f32(460f, var_1.b.x)))));
    var var_3 = Struct_1(u_input.a.zzw, vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-var_1.b.x), var_0.b.x), true);
    var_0 = func_1(u_input.c, var_0.b);
    var_3 = Struct_1(_wgslsmith_mod_vec3_u32(var_3.a, ~(~reverseBits(u_input.a.yyz))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_0.b)) + _wgslsmith_f_op_vec3_f32(trunc(var_0.b))))), var_0.c);
    var_3 = Struct_1(var_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_3.b.x, -434f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(574f, 907f, var_0.b.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.b.x, -107f))))), all(select(vec4<bool>(false, u_input.b == u_input.b, false, u_input.b != u_input.b), select(vec4<bool>(var_3.c, var_0.c, var_3.c, var_1.c), select(vec4<bool>(var_0.c, var_3.c, var_3.c, false), vec4<bool>(false, var_1.c, true, false), vec4<bool>(true, true, false, false)), !vec4<bool>(true, false, var_3.c, false)), vec4<bool>(var_0.c, false, !var_0.c, !var_3.c))));
    var var_4 = Struct_1(_wgslsmith_div_vec3_u32(~(u_input.a.wzy ^ var_3.a) & ~(~var_1.a), func_2().a), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_0.b))) - _wgslsmith_f_op_vec3_f32(select(func_4(Struct_1(vec3<u32>(var_3.a.x, 31691u, 25457u), var_1.b, true), Struct_1(vec3<u32>(var_0.a.x, var_3.a.x, u_input.c.x), vec3<f32>(var_0.b.x, -1821f, 1000f), true), Struct_1(var_1.a, var_1.b, var_1.c)).b, func_4(Struct_1(var_0.a, vec3<f32>(var_1.b.x, var_1.b.x, var_2.x), true), Struct_1(var_1.a, vec3<f32>(var_1.b.x, 2686f, 1000f), var_1.c), Struct_1(vec3<u32>(0u, 0u, var_0.a.x), var_3.b, true)).b, 1051f != var_3.b.x))))), any(select(!func_5(Struct_1(vec3<u32>(4316u, var_1.a.x, u_input.c.x), vec3<f32>(var_2.x, var_0.b.x, var_0.b.x), false), Struct_2(false, Struct_1(vec3<u32>(6286u, var_1.a.x, var_0.a.x), var_1.b, var_0.c)), var_3.a.x), vec2<bool>(false || var_0.c, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~(43136u >> (~var_1.a.x % 32u)), u_input.b, var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.b.x * _wgslsmith_f_op_f32(floor(1000f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1476f, -315f)))));
}

