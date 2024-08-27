struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31> = array<u32, 31>(0u, 98522u, 22977u, 4294967295u, 1u, 49873u, 60502u, 19295u, 6127u, 4294967295u, 1u, 9339u, 61777u, 82915u, 5940u, 4294967295u, 0u, 1u, 1u, 73976u, 11944u, 66479u, 1u, 12919u, 0u, 44354u, 1u, 35795u, 0u, 19809u, 6062u);

var<private> global1: array<Struct_1, 29>;

var<private> global2: array<u32, 1>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec2<i32> {
    var var_0 = Struct_1(u_input.a.yx, vec2<i32>(1i, 1i), all(vec4<bool>(true, true, true, true)));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, min(arg_1, arg_1 << (~(~var_0.a.x) % 32u))), 29u)];
    let var_2 = ~(~select(reverseBits(firstLeadingBit(vec3<u32>(55286u, 43829u, 50365u))), abs(~u_input.a), select(vec3<bool>(false, false, var_0.c), vec3<bool>(var_0.c, false, var_1.c), true)));
    var_0 = global1[_wgslsmith_index_u32(7268u, 29u)];
    var var_3 = vec4<f32>(124f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), arg_0)))), arg_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_0)))), 1013f, !select(var_0.c && var_1.c, global2[_wgslsmith_index_u32(0u, 1u)] > global0[_wgslsmith_index_u32(1u, 31u)], all(vec4<bool>(var_1.c, false, true, var_0.c))))));
    return vec2<i32>(-var_1.b.x, var_0.b.x);
}

fn func_2(arg_0: f32) -> Struct_1 {
    return Struct_1(~_wgslsmith_div_vec2_u32(~(~u_input.a.xz), u_input.a.zx), abs(min(~vec2<i32>(26937i, -2147483647i), firstLeadingBit(vec2<i32>(-38726i, 40963i)))) | min(max(abs(vec2<i32>(1180i, 0i)), vec2<i32>(1946i, 0i)), select(_wgslsmith_clamp_vec2_i32(vec2<i32>(-29142i, 0i), vec2<i32>(-13996i, -1i), vec2<i32>(-35484i, 90068i)), func_3(arg_0, 0u), any(vec4<bool>(true, true, true, true)))), !((global0[_wgslsmith_index_u32(15861u, 31u)] << (~0u % 32u)) > _wgslsmith_sub_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(45051u, 1u)], 1u)], abs(37088u))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1060f - _wgslsmith_f_op_f32(round(324f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2391f)), !(arg_1.x | true))))));
    global1 = array<Struct_1, 29>();
    let var_1 = max(1u, var_0.a.x);
    var var_2 = var_0.a ^ (abs(arg_0.a) ^ (~(~arg_0.a) >> (var_0.a % vec2<u32>(32u))));
    var var_3 = -(~(~countOneBits(abs(vec4<i32>(arg_0.b.x, -1259i, -24872i, arg_0.b.x)))));
    return var_0;
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_1, 29>();
    var var_0 = false;
    var var_1 = func_4(func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1118f)))), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, any(vec2<bool>(true, false)))));
    var var_2 = Struct_1(vec2<u32>(89689u, func_4(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~global2[_wgslsmith_index_u32(22903u, 1u)], _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global0[_wgslsmith_index_u32(32641u, 31u)]), vec2<u32>(0u, 4294967295u)), func_4(global1[_wgslsmith_index_u32(4294967295u, 29u)], vec2<bool>(false, false)).a.x), 29u)], vec2<bool>(true, true)).a.x), vec2<i32>(-2147483647i, max(abs(~22868i), var_1.b.x)), all(!select(!vec3<bool>(false, var_1.c, true), select(vec3<bool>(true, false, true), vec3<bool>(var_1.c, false, true), vec3<bool>(var_1.c, false, var_1.c)), !vec3<bool>(var_1.c, var_1.c, var_1.c))));
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(47408u, 37603u), ~(global2[_wgslsmith_index_u32(var_2.a.x, 1u)] | firstTrailingBit(~global0[_wgslsmith_index_u32(0u, 31u)])), ~_wgslsmith_div_u32(~var_1.a.x & global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(6392u, var_2.a.x), 1u)], var_2.a.x)), 29u)];
    return Struct_1(var_3.a, var_3.b, var_3.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_1(~var_0.a, vec2<i32>(reverseBits(2147483647i), 1i), true);
    global0 = array<u32, 31>();
    let var_2 = u_input.a.yz;
    let var_3 = Struct_1(var_0.a, func_1().b, true);
    let var_4 = Struct_1(~vec2<u32>(global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(var_1.a.x, 31u)], 1u)], 4294967295u >> (var_3.a.x % 32u)), ~func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -590f), 664f)).b, !all(vec2<bool>(true, true)));
    let var_5 = !(!(!vec4<bool>(true, any(vec3<bool>(false, true, false)), false, true)));
    var var_6 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -279f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-251f)), _wgslsmith_f_op_f32(-188f - _wgslsmith_f_op_f32(floor(-1494f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(~2147483647i, -38061i, var_1.b.x), ~vec4<i32>(-var_3.b.x, 47934i, var_6.b.x, select(_wgslsmith_mult_i32(27029i, -23203i), i32(-1i) * -1889i, var_5.x && false)), _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(select(var_4.a, var_1.a, var_1.c), u_input.a.xz), vec2<u32>(4294967295u, min(var_4.a.x, 4294967295u))), _wgslsmith_f_op_f32(-411f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-810f)) + 584f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-522f * -602f), _wgslsmith_f_op_f32(f32(-1f) * -1770f))))));
}

