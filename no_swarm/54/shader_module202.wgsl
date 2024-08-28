struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
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

var<private> global0: array<i32, 29>;

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec2<u32>(0u, 6667u)), Struct_1(vec2<u32>(4294967295u, 1u)), Struct_1(vec2<u32>(102566u, 4294967295u)), Struct_1(vec2<u32>(0u, 2869u)), Struct_1(vec2<u32>(1u, 7061u)), Struct_1(vec2<u32>(0u, 10267u)), Struct_1(vec2<u32>(4294967295u, 41301u)), Struct_1(vec2<u32>(1u, 1u)), Struct_1(vec2<u32>(12381u, 0u)), Struct_1(vec2<u32>(103692u, 7700u)), Struct_1(vec2<u32>(1u, 15556u)), Struct_1(vec2<u32>(1u, 38683u)), Struct_1(vec2<u32>(4294967295u, 439u)), Struct_1(vec2<u32>(4294967295u, 1u)));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1) -> u32 {
    global1 = array<Struct_1, 14>();
    global1 = array<Struct_1, 14>();
    let var_0 = Struct_1(~(~abs(~vec2<u32>(u_input.b.x, 1u))));
    let var_1 = Struct_1(var_0.a);
    let var_2 = ~vec4<i32>(max(global0[_wgslsmith_index_u32(12176u, 29u)] << (u_input.b.x % 32u), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(106770u, 29u)])), _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.a, -1i), ~2047i), _wgslsmith_clamp_i32(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(87053u, 29u)], global0[_wgslsmith_index_u32(1u, 29u)]), -2147483647i, u_input.a), ~(~(-2040i))) & ~(-((vec4<i32>(global0[_wgslsmith_index_u32(var_1.a.x, 29u)], global0[_wgslsmith_index_u32(var_1.a.x, 29u)], 1i, u_input.a) << (vec4<u32>(72941u, 6989u, var_1.a.x, var_0.a.x) % vec4<u32>(32u))) & vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], 65402i, -14573i, -42551i)));
    return ~(~firstTrailingBit(min(4143u | var_0.a.x, ~u_input.b.x)));
}

fn func_3(arg_0: i32) -> bool {
    global0 = array<i32, 29>();
    let var_0 = true;
    global0 = array<i32, 29>();
    var var_1 = var_0;
    var var_2 = firstTrailingBit(max(~_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x)), ~vec4<u32>(14780u, u_input.b.x, 12480u, u_input.b.x)), min(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(66571u, 1u, u_input.b.x), vec3<u32>(52080u, u_input.b.x, 0u)), min(u_input.b.x, u_input.b.x), 4294967295u, firstLeadingBit(u_input.b.x)), vec4<u32>(67139u, ~4294967295u, 4294967295u, 4294967295u))));
    return false;
}

fn func_1() -> vec2<u32> {
    let var_0 = Struct_1(vec2<u32>(~(func_2(vec4<f32>(-291f, -673f, 1393f, -266f), global1[_wgslsmith_index_u32(20063u, 14u)]) >> (abs(27533u) % 32u)), 1u));
    global1 = array<Struct_1, 14>();
    global0 = array<i32, 29>();
    global1 = array<Struct_1, 14>();
    var var_1 = !(firstTrailingBit(_wgslsmith_div_u32(51805u, u_input.b.x)) != ~(~48369u)) && !(!(func_3(global0[_wgslsmith_index_u32(52998u, 29u)]) & true));
    return _wgslsmith_clamp_vec2_u32(u_input.b << (var_0.a % vec2<u32>(32u)), ~vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(23950u, 0u, 1u), ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))), firstTrailingBit(vec2<u32>(var_0.a.x, _wgslsmith_mod_u32(var_0.a.x, 1u)) >> (u_input.b % vec2<u32>(32u))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> Struct_1 {
    global1 = array<Struct_1, 14>();
    let var_0 = Struct_1(~countOneBits(vec2<u32>(u_input.b.x, min(arg_0.a.x, u_input.b.x))));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-379f * 294f));
    let var_3 = vec2<i32>(-11575i, -2147483647i);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(~(~firstLeadingBit(_wgslsmith_div_u32(u_input.b.x, u_input.b.x))) << (15852u % 32u), 14u)];
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    let var_1 = func_4(Struct_1(select(vec2<u32>(u_input.b.x, 4294967295u), func_1(), vec2<bool>(true, true)) << (~(vec2<u32>(96535u, u_input.b.x) & vec2<u32>(var_0.a.x, u_input.b.x)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(404f)), _wgslsmith_f_op_f32(359f - -1000f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(619f * 902f)))))), global0[_wgslsmith_index_u32(~(~u_input.b.x), 29u)]);
    let var_2 = var_1;
    let var_3 = !vec2<bool>(any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true), any(vec4<bool>(true, false, false, false)))), all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_4 = vec4<bool>(var_3.x, all(vec3<bool>(true, var_3.x, !var_3.x)), -1i > -abs(_wgslsmith_mult_i32(6017i, u_input.a)), var_3.x & true);
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

