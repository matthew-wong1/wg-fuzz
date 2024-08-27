struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(2147483647i, 0i, i32(-2147483648), -53064i);

var<private> global1: f32 = -1000f;

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), false), Struct_1(vec2<i32>(0i, 28904i), false), Struct_1(vec2<i32>(32289i, 15588i), false), Struct_1(vec2<i32>(2147483647i, -3541i), false), Struct_1(vec2<i32>(0i, 2147483647i), true), Struct_1(vec2<i32>(0i, 0i), true), Struct_1(vec2<i32>(-8635i, -1i), false), Struct_1(vec2<i32>(34080i, 34371i), false), Struct_1(vec2<i32>(-43812i, i32(-2147483648)), false));

var<private> global3: array<u32, 10>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool) -> u32 {
    global2 = array<Struct_1, 9>();
    let var_0 = -abs(global0.xwy);
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -551f);
    let var_1 = global2[_wgslsmith_index_u32(min(_wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(u_input.a, u_input.a) << (1u % 32u), 1u), ~_wgslsmith_div_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 10u)], 10u)], ~1u)) << (firstTrailingBit(14864u) % 32u), 9u)];
    let var_2 = ~1i;
    return _wgslsmith_div_u32(~16956u, abs(1103u));
}

fn func_2() -> Struct_1 {
    global2 = array<Struct_1, 9>();
    let var_0 = global2[_wgslsmith_index_u32(max(_wgslsmith_div_u32(func_3(true), ~9332u), ~countOneBits(_wgslsmith_sub_u32(u_input.a, 22606u))) << (~u_input.a % 32u), 9u)];
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-137f, 1022f) + -736f))), -376f));
    let var_2 = Struct_1(global0.xz, all(select(select(!vec3<bool>(false, var_0.b, false), vec3<bool>(var_0.b, false, var_0.b), select(true, var_0.b, false)), !vec3<bool>(false, var_0.b, true), !select(vec3<bool>(var_0.b, false, false), vec3<bool>(true, true, var_0.b), vec3<bool>(var_0.b, var_0.b, true)))));
    global2 = array<Struct_1, 9>();
    return global2[_wgslsmith_index_u32(_wgslsmith_div_u32(max(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(global3[_wgslsmith_index_u32(~84087u, 10u)], _wgslsmith_mod_u32(98101u, 4294967295u))), max(_wgslsmith_add_u32(u_input.a, ~4294967295u), u_input.a)), 7649u), 9u)];
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec4<bool> {
    var var_0 = func_2();
    var var_1 = ~(-(~var_0.a.x)) << (global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(firstLeadingBit(u_input.a), _wgslsmith_mult_u32(1u, global3[_wgslsmith_index_u32(u_input.a, 10u)])), vec2<u32>(u_input.a, countOneBits(u_input.a))), 10u)] % 32u);
    var_1 = select(reverseBits(-firstTrailingBit(~global0.x)), -(~(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, var_0.a.x, global0.x, arg_0.a.x), vec4<i32>(-4840i, var_0.a.x, global0.x, global0.x)) | _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, 0i), var_0.a))), true);
    let var_2 = select(select(select(vec3<bool>(true, any(vec3<bool>(arg_0.b, var_0.b, true)), any(vec2<bool>(false, false))), vec3<bool>(false, true, any(vec3<bool>(true, true, var_0.b))), false), vec3<bool>(false, false, any(select(vec3<bool>(false, arg_0.b, true), vec3<bool>(true, var_0.b, arg_0.b), arg_0.b))), vec3<bool>(!(false == var_0.b), true, !any(vec3<bool>(true, var_0.b, var_0.b)))), select(!vec3<bool>(-2147483647i <= arg_0.a.x, true, true), vec3<bool>(~27626u > _wgslsmith_dot_vec2_u32(vec2<u32>(38361u, 2u), vec2<u32>(36806u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 10u)], 10u)], 10u)])), func_2().b || arg_0.b, all(!vec3<bool>(true, var_0.b, arg_0.b))), !select(select(vec3<bool>(true, arg_0.b, var_0.b), vec3<bool>(false, arg_0.b, var_0.b), true), !vec3<bool>(var_0.b, false, var_0.b), select(vec3<bool>(false, var_0.b, false), vec3<bool>(var_0.b, true, var_0.b), vec3<bool>(false, false, false)))), select(!(!vec3<bool>(var_0.b, false, var_0.b)), !select(select(vec3<bool>(true, var_0.b, false), vec3<bool>(true, var_0.b, true), vec3<bool>(false, var_0.b, arg_0.b)), select(vec3<bool>(false, var_0.b, var_0.b), vec3<bool>(true, false, var_0.b), arg_0.b), true), select(!select(vec3<bool>(var_0.b, var_0.b, arg_0.b), vec3<bool>(false, var_0.b, arg_0.b), vec3<bool>(arg_0.b, false, true)), vec3<bool>(var_0.b, !var_0.b, true), true)));
    var var_3 = Struct_1(reverseBits(~(-vec2<i32>(1i, var_0.a.x)) >> (_wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(u_input.a, 31495u)), ~vec2<u32>(global3[_wgslsmith_index_u32(5533u, 10u)], 64932u)) % vec2<u32>(32u))), var_0.b);
    return !vec4<bool>(!all(!var_2), all(vec4<bool>(false, var_3.b, false, !var_0.b)), var_2.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1402f, -2627f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2298f, 239f))))) + -154f), -1000f);
    var var_1 = ~_wgslsmith_add_vec3_i32(vec3<i32>(~(i32(-1i) * -2147483647i), global0.x, -2147483647i), _wgslsmith_mult_vec3_i32(~(-vec3<i32>(global0.x, global0.x, -24897i)), global0.zyx & global0.xww));
    var var_2 = -29141i;
    global2 = array<Struct_1, 9>();
    global0 = -vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(14414i, 2147483647i, var_1.x), 86762i), 39334i), global0.x, var_1.x, global0.x);
    let var_3 = vec4<i32>(-1i) * -reverseBits(~(vec4<i32>(-2147483647i, global0.x, 33579i, global0.x) >> (vec4<u32>(u_input.a, 0u, u_input.a, u_input.a) % vec4<u32>(32u))));
    let var_4 = select(select(vec4<bool>(true, _wgslsmith_mod_i32(1i, global0.x) > _wgslsmith_clamp_i32(global0.x, var_3.x, global0.x), !(global0.x >= 0i), select(select(false, false, true), true, true)), !(!func_1(global2[_wgslsmith_index_u32(u_input.a, 9u)], var_3.x)), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false)))), select(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), true)), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, true, false))), true), !(all(vec3<bool>(false, false, true)) || false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)));
}

