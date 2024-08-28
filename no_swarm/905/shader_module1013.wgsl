struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(Struct_1(1i), vec3<i32>(1i, 1i, 0i), vec4<u32>(52777u, 0u, 0u, 1u), Struct_2(Struct_1(-17394i))), Struct_3(Struct_1(-3662i), vec3<i32>(9957i, -4935i, i32(-2147483648)), vec4<u32>(45104u, 34973u, 16839u, 62332u), Struct_2(Struct_1(0i))), Struct_3(Struct_1(i32(-2147483648)), vec3<i32>(-1i, 1i, i32(-2147483648)), vec4<u32>(24456u, 64007u, 11821u, 4294967295u), Struct_2(Struct_1(1i))), Struct_3(Struct_1(15840i), vec3<i32>(13424i, 2776i, -28105i), vec4<u32>(29848u, 25217u, 46897u, 4294967295u), Struct_2(Struct_1(19051i))), Struct_3(Struct_1(3380i), vec3<i32>(3531i, -1i, -1i), vec4<u32>(13393u, 1u, 71770u, 4294967295u), Struct_2(Struct_1(2147483647i))), Struct_3(Struct_1(0i), vec3<i32>(-34794i, 3421i, -35522i), vec4<u32>(39894u, 54116u, 35325u, 0u), Struct_2(Struct_1(-24197i))), Struct_3(Struct_1(-478i), vec3<i32>(-46610i, -1i, i32(-2147483648)), vec4<u32>(38576u, 12570u, 1u, 0u), Struct_2(Struct_1(i32(-2147483648)))), Struct_3(Struct_1(52413i), vec3<i32>(20818i, -47101i, -16870i), vec4<u32>(97460u, 1u, 0u, 24047u), Struct_2(Struct_1(-1i))), Struct_3(Struct_1(1i), vec3<i32>(57906i, 2147483647i, 14922i), vec4<u32>(0u, 56564u, 13074u, 0u), Struct_2(Struct_1(80957i))), Struct_3(Struct_1(-46107i), vec3<i32>(1i, 15850i, 1i), vec4<u32>(14256u, 56705u, 63555u, 0u), Struct_2(Struct_1(1i))), Struct_3(Struct_1(2147483647i), vec3<i32>(-6983i, -36188i, -20605i), vec4<u32>(39936u, 1u, 24651u, 89834u), Struct_2(Struct_1(40358i))), Struct_3(Struct_1(-13578i), vec3<i32>(-13793i, 0i, -1i), vec4<u32>(43415u, 0u, 99828u, 47293u), Struct_2(Struct_1(0i))), Struct_3(Struct_1(-1i), vec3<i32>(i32(-2147483648), -1i, 26494i), vec4<u32>(4294967295u, 12932u, 19547u, 57596u), Struct_2(Struct_1(i32(-2147483648)))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> u32 {
    let var_0 = u_input.e;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1269f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1974f), _wgslsmith_div_f32(-1000f, 991f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(123f, -575f, true)) - _wgslsmith_f_op_f32(min(378f, -1380f)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -987f) * -1472f), _wgslsmith_f_op_f32(-1000f + -112f))) + _wgslsmith_f_op_f32(-339f - _wgslsmith_f_op_f32(-812f - -1000f))));
    var var_2 = u_input.c.x;
    global0 = ~min(vec3<u32>(~reverseBits(u_input.b), ~abs(41391u), ~77222u), vec3<u32>(~global0.x, firstLeadingBit(40919u), u_input.d) >> (abs(min(vec3<u32>(u_input.b, 1u, 1u), vec3<u32>(global0.x, 11986u, global0.x))) % vec3<u32>(32u)));
    let var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1, 1268f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1043f, var_1)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1193f, var_1)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1, var_1), vec2<f32>(-802f, var_1))))))));
    return u_input.d;
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: vec3<bool>) -> Struct_1 {
    global0 = firstTrailingBit(~select(vec3<u32>(38726u, 4294967295u, u_input.b) | vec3<u32>(1u, 0u, 4011u), vec3<u32>(26194u, 1u, 18274u), all(arg_2))) & firstLeadingBit(vec3<u32>(global0.x, u_input.d, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, global0.x), countOneBits(vec2<u32>(0u, 0u)))));
    global0 = ~(~(~vec3<u32>(u_input.d, u_input.b, u_input.d)));
    global1 = array<Struct_3, 13>();
    global0 = ~vec3<u32>(global0.x, func_3(), firstLeadingBit(~(u_input.d >> (global0.x % 32u))));
    var var_0 = _wgslsmith_clamp_i32(min(u_input.c.x, _wgslsmith_div_i32(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-14845i, arg_1.x, -74019i), u_input.c)), 2147483647i | u_input.e.x)), firstTrailingBit(-(u_input.e.x << (45075u % 32u))), -u_input.c.x);
    return Struct_1(arg_1.x >> (~1u % 32u));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    let var_0 = Struct_4(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), u_input.e, select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(true, false, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), select(0u < u_input.b, u_input.b > 1u, all(vec4<bool>(true, true, false, true))))));
    global1 = array<Struct_3, 13>();
    let var_1 = Struct_2(arg_1.a);
    var var_2 = Struct_3(Struct_1(-(i32(-1i) * -79993i)), _wgslsmith_div_vec3_i32(firstTrailingBit(-vec3<i32>(var_1.a.a, arg_1.a.a, arg_0.a) ^ firstTrailingBit(u_input.e.ywy)), u_input.c), ~(~max(vec4<u32>(u_input.d, global0.x, 4294967295u, 109777u), vec4<u32>(global0.x, global0.x, 48278u, global0.x))) >> (_wgslsmith_sub_vec4_u32(select(vec4<u32>(38830u, u_input.b, u_input.b, 1u), vec4<u32>(u_input.b, u_input.d, global0.x, u_input.b), true) << (firstTrailingBit(vec4<u32>(global0.x, u_input.b, 39044u, 1u)) % vec4<u32>(32u)), firstTrailingBit(firstTrailingBit(vec4<u32>(80528u, u_input.d, 0u, 4294967295u)))) % vec4<u32>(32u)), var_1);
    var var_3 = vec3<bool>(false, true, !all(vec2<bool>(true, true)));
    return _wgslsmith_div_u32(68423u, ~firstTrailingBit(var_2.c.x)) >> (_wgslsmith_mult_u32(abs(_wgslsmith_div_u32(5055u, 4294967295u)), var_2.c.x) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_mod_vec3_u32(select(vec3<u32>(17949u, u_input.d, u_input.d), vec3<u32>(4294967295u, u_input.b, u_input.d) >> (vec3<u32>(u_input.d, 4294967295u, 1u) % vec3<u32>(32u)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true)), vec3<u32>(0u, ~28638u, func_1(Struct_1(-3674i), Struct_2(Struct_1(u_input.c.x))))) << (_wgslsmith_mult_vec3_u32(vec3<u32>(31078u, max(~14062u, 140783u << (1u % 32u)), ~(~global0.x)), reverseBits(~(~vec3<u32>(67733u, 0u, u_input.d)))) % vec3<u32>(32u));
    let var_0 = 4294967295u;
    let var_1 = Struct_2(Struct_1(~(_wgslsmith_dot_vec2_i32(u_input.e.zz, u_input.a) & 1i)));
    let var_2 = Struct_4(var_1.a);
    var var_3 = 0u;
    let var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.a);
}

