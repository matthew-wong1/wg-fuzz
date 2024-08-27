struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22>;

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: Struct_2) -> vec2<u32> {
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_3.c.a))))), ~arg_2.b.b);
    var var_0 = _wgslsmith_div_vec3_f32(global1.a, _wgslsmith_div_vec3_f32(arg_0.c.a, vec3<f32>(-227f, -1819f, _wgslsmith_f_op_f32(-1032f * _wgslsmith_f_op_f32(ceil(global1.a.x))))));
    var var_1 = arg_0;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(126f - arg_0.b.a.x), 356f, -727f)), arg_2.b.a, vec3<bool>(any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), false)), true, !(12359i <= u_input.a.x)))), arg_3.c.b);
    var var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(var_1.b.a.x)), _wgslsmith_f_op_f32(2134f * -1226f), 1426f) * _wgslsmith_f_op_vec3_f32(arg_2.c.a * _wgslsmith_div_vec3_f32(arg_3.c.a, vec3<f32>(global1.a.x, arg_2.c.a.x, arg_2.c.a.x))))), vec3<f32>(630f, 727f, var_1.c.a.x)));
    return min(reverseBits(select(vec2<u32>(firstTrailingBit(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.x, var_1.c.b.x, arg_0.c.b.x, 0u), vec4<u32>(arg_2.c.b.x, arg_3.b.b.x, arg_2.a.x, 5626u))), firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(2916u, 1u), var_2.b.yz)), (arg_2.c.a.x > 525f) & true)), var_2.b.wz);
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = all(!(!vec2<bool>(345f > global1.a.x, true)));
    let var_1 = global0[_wgslsmith_index_u32(9985u, 22u)];
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(~(var_1.a.x >> (arg_0 % 32u)), 4294967295u), ~_wgslsmith_dot_vec2_u32(func_3(Struct_2(global1.b.zxw, Struct_1(vec3<f32>(var_1.c.a.x, var_1.c.a.x, -731f), vec4<u32>(arg_0, var_1.a.x, 49727u, global1.b.x)), var_1.b), var_1.c.b.xz, Struct_2(vec3<u32>(var_1.a.x, arg_0, arg_0), var_1.c, Struct_1(global1.a, vec4<u32>(21209u, 0u, 34983u, 1u))), Struct_2(vec3<u32>(0u, global1.b.x, 26937u), Struct_1(global1.a, var_1.b.b), Struct_1(global1.a, vec4<u32>(arg_0, global1.b.x, arg_0, global1.b.x)))), ~vec2<u32>(76497u, 4294967295u))), ~vec2<u32>(~var_1.b.b.x, ~(arg_0 & var_1.a.x))), 22u)];
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.a.x + 1050f) * _wgslsmith_f_op_f32(-var_1.c.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -472f), -654f))), _wgslsmith_div_vec4_u32(vec4<u32>(select(arg_0, 96834u, select(true, false, false)), _wgslsmith_dot_vec4_u32(global1.b, _wgslsmith_div_vec4_u32(global1.b, vec4<u32>(34864u, 29590u, 99733u, 1u))), 1u, _wgslsmith_div_u32(reverseBits(var_1.b.b.x), ~40833u)), _wgslsmith_add_vec4_u32(select(vec4<u32>(global1.b.x, 148587u, 1u, var_2.c.b.x), vec4<u32>(global1.b.x, global1.b.x, global1.b.x, var_2.b.b.x), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false))), select(vec4<u32>(global1.b.x, 49322u, var_2.c.b.x, global1.b.x), global1.b & vec4<u32>(var_1.a.x, 4294967295u, 0u, 1u), true))));
    let var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.b.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(ceil(global1.a.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.x + -697f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.a.x))))), _wgslsmith_f_op_f32(abs(856f)), any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), false)) || false))));
    return var_2.b;
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: vec3<u32>, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, -806f, -466f))), firstLeadingBit(vec4<u32>(1622u, 21460u, reverseBits(_wgslsmith_dot_vec2_u32(global1.b.xy, vec2<u32>(29016u, 1u))), arg_0)));
    var var_1 = u_input.a;
    global0 = array<Struct_2, 22>();
    var var_2 = var_0;
    global1 = var_0;
    return func_2(_wgslsmith_clamp_u32(arg_2.x, ~(~arg_0 & ~54820u), arg_2.x));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = ~select(arg_2.c.b.ww, func_2(min(arg_2.c.b.x, global1.b.x)).b.yw, all(select(vec2<bool>(arg_1.x, arg_1.x), arg_0.zz, false))) & _wgslsmith_add_vec2_u32(vec2<u32>(23365u, select(~global1.b.x, ~23177u, u_input.b < 1i)), _wgslsmith_mod_vec2_u32(arg_2.a.yz, vec2<u32>(arg_2.a.x, arg_2.a.x)) & abs(min(arg_2.b.b.zx, arg_2.c.b.xy)));
    let var_1 = vec2<bool>(arg_0.x || false, false);
    global1 = arg_2.b;
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(func_2(var_0.x).a.x, _wgslsmith_f_op_f32(arg_2.b.a.x + global1.a.x), _wgslsmith_f_op_f32(-arg_2.b.a.x))))), vec4<u32>(~82278u, var_0.x, ~(~1u & var_0.x), _wgslsmith_add_u32(~(~0u), 71886u)));
    let var_2 = arg_2.b;
    return Struct_2(arg_2.c.b.xxy, var_2, func_1(min(global1.b.x, func_2(29985u).b.x), vec3<u32>(~var_0.x, _wgslsmith_sub_u32(arg_2.a.x, arg_2.b.b.x), 10122u) >> (vec3<u32>(~arg_2.b.b.x, 20637u, var_0.x) % vec3<u32>(32u)), ~(~global1.b.yxy), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global1.a.yx, var_2.a.xy), vec2<f32>(303f, var_2.a.x)) + vec2<f32>(-1000f, _wgslsmith_f_op_f32(-arg_2.b.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 22>();
    var var_0 = func_4(!vec3<bool>(select(all(vec2<bool>(true, true)), false, 20694u <= global1.b.x), true, ~u_input.a.x == ~2147483647i), vec2<bool>(any(vec4<bool>(false, true, false, true)), select(any(vec3<bool>(true, true, true)), true, abs(global1.b.x) < (global1.b.x >> (global1.b.x % 32u)))), Struct_2(~vec3<u32>(99942u & global1.b.x, 32347u, 13316u >> (global1.b.x % 32u)), func_1(min(0u, _wgslsmith_div_u32(0u, 1u)), ~global1.b.yxx, ~vec3<u32>(global1.b.x, 72697u, 0u), global1.a.zz), func_1(~(~15909u), reverseBits(vec3<u32>(global1.b.x, 4294967295u, global1.b.x)), vec3<u32>(7589u, ~0u, min(0u, 24305u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global1.a.xz))))));
    var_0 = Struct_2(vec3<u32>(~(~(~var_0.c.b.x)), global1.b.x, func_4(vec3<bool>(true, true, true), vec2<bool>(true, true), Struct_2(vec3<u32>(var_0.c.b.x, var_0.a.x, var_0.a.x), func_4(vec3<bool>(false, false, true), vec2<bool>(true, false), global0[_wgslsmith_index_u32(1u, 22u)]).b, func_1(global1.b.x, vec3<u32>(global1.b.x, 0u, 1306u), vec3<u32>(var_0.b.b.x, 60841u, var_0.a.x), var_0.b.a.zx))).b.b.x), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.a.x, global1.a.x, global1.a.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.a))), _wgslsmith_mult_vec4_u32(global1.b, _wgslsmith_add_vec4_u32(~global1.b, vec4<u32>(global1.b.x, 71814u, 1u, 26840u) & vec4<u32>(1u, 14591u, global1.b.x, 4294967295u)))), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1592f, 183f, var_0.b.a.x), _wgslsmith_f_op_vec3_f32(func_1(18548u, var_0.c.b.xyz, var_0.a, global1.a.yy).a + func_2(global1.b.x).a), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), vec3<bool>(false, true, false), u_input.b > u_input.b))), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(global1.b.x, global1.b.x, var_0.c.b.x), abs(57612u)), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(global1.b.x, global1.b.x, global1.b.x)), vec3<u32>(var_0.c.b.x, 120048u, 4294967295u)), ~(~71665u), ~1u)));
    global1 = var_0.c;
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global1.a.x))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, global1.a.x));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(select(1000f, -1322f, true)), _wgslsmith_f_op_f32(2078f + var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -465f)) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2107f, global1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -851f), _wgslsmith_f_op_f32(-var_0.c.a.x)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1138f, -1443f, var_2.x, global1.a.x), vec4<f32>(global1.a.x, global1.a.x, var_2.x, global1.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-561f, var_2.x, 221f, global1.a.x) - vec4<f32>(-812f, -1279f, 1001f, global1.a.x))))))));
    var var_4 = Struct_2(var_0.b.b.zwy, func_4(vec3<bool>(true, true, true), vec2<bool>(u_input.a.x >= ~u_input.b, !select(false, true, false)), func_4(vec3<bool>(true, true, true), vec2<bool>(true, true), func_4(vec3<bool>(true, true, true), vec2<bool>(true, true), func_4(vec3<bool>(true, true, false), vec2<bool>(true, true), Struct_2(vec3<u32>(12983u, global1.b.x, global1.b.x), Struct_1(var_0.b.a, vec4<u32>(global1.b.x, 64616u, global1.b.x, global1.b.x)), var_0.c))))).c, func_4(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), false), vec2<bool>(true, true), global0[_wgslsmith_index_u32(select(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.b.x, global1.b.x, 43064u), global1.b.wxx | var_0.a), any(vec2<bool>(true, true))), 22u)]).c);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yw, _wgslsmith_f_op_f32(var_2.x * 897f));
}

