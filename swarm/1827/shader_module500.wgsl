struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: bool,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 20>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: vec4<i32>) -> bool {
    global1 = array<Struct_1, 20>();
    var var_0 = Struct_1(_wgslsmith_mult_vec4_i32(-countOneBits(~arg_2), _wgslsmith_clamp_vec4_i32(vec4<i32>(~arg_2.x, -arg_0, _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-12602i, arg_0)), _wgslsmith_div_i32(arg_2.x, arg_2.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(-1777i, arg_2.x, u_input.b.x, -1i) & vec4<i32>(arg_2.x, global0.d.x, -1i, 27590i), vec4<i32>(u_input.b.x, arg_2.x, 1i, arg_2.x)), _wgslsmith_div_vec4_i32(arg_2, arg_2))), max(arg_2.x, arg_0), all(vec3<bool>(true, all(select(arg_1, vec2<bool>(true, arg_1.x), vec2<bool>(false, true))), false)), vec2<i32>(-1i) * -global0.a.xz);
    let var_1 = firstTrailingBit(-27403i & _wgslsmith_add_i32(var_0.a.x ^ arg_2.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(global0.a.xyw, vec3<i32>(0i, 1i, arg_2.x)), abs(vec3<i32>(1880i, arg_0, arg_2.x)))));
    let var_2 = ~_wgslsmith_add_vec2_i32(max(~_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.d.x, 2147483647i), u_input.b), _wgslsmith_add_vec2_i32(vec2<i32>(1i, -42943i) & global0.a.xz, vec2<i32>(-1i, 1i))), _wgslsmith_sub_vec2_i32(u_input.b, ~(~vec2<i32>(-1i, 2147483647i))));
    let var_3 = vec2<u32>(firstTrailingBit(11289u), u_input.a);
    return any(select(select(select(select(vec3<bool>(true, arg_1.x, true), vec3<bool>(false, false, false), var_0.c), vec3<bool>(global0.c, true, true), select(vec3<bool>(arg_1.x, false, true), vec3<bool>(true, false, false), true)), vec3<bool>(any(vec3<bool>(false, arg_1.x, var_0.c)), true & arg_1.x, arg_1.x), !var_0.c), vec3<bool>(false, arg_1.x, (var_0.c == global0.c) & !var_0.c), true));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: u32) -> vec4<bool> {
    global0 = Struct_1(~(global0.a ^ select(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 13884i, -35357i, 1i), vec4<i32>(global0.b, u_input.b.x, 2147483647i, u_input.b.x)), firstTrailingBit(vec4<i32>(global0.b, global0.a.x, 8811i, u_input.b.x)), vec4<bool>(arg_1.c, global0.c, arg_2.x, arg_2.x))), countOneBits(_wgslsmith_add_i32(13076i, arg_1.d.x)), true, vec2<i32>(_wgslsmith_sub_i32(abs(abs(u_input.b.x)), -abs(10476i)), u_input.b.x));
    let var_0 = vec3<f32>(-303f, _wgslsmith_f_op_f32(min(145f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -566f)));
    global1 = array<Struct_1, 20>();
    let var_1 = all(vec2<bool>(!(!all(arg_2.wxw)), func_2(min(u_input.b.x, global0.d.x), arg_2.yw, reverseBits(arg_1.a))));
    var var_2 = 4294967295u;
    return arg_2;
}

fn func_3() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1185f, 1067f)) * vec2<f32>(1f, -691f))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1563f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1000f))))));
    var var_1 = vec3<u32>(reverseBits(4174u), firstLeadingBit(~countOneBits(u_input.a)) | abs(4294967295u), u_input.a);
    let var_2 = func_1(~abs(vec2<u32>(reverseBits(var_1.x), 40780u)), Struct_1(global0.a, ~(-1i), true, vec2<i32>(_wgslsmith_clamp_i32(~u_input.b.x, _wgslsmith_add_i32(u_input.b.x, u_input.b.x), 15539i), firstLeadingBit(u_input.b.x))), !func_1(select(vec2<u32>(u_input.a, 0u) << (var_1.yx % vec2<u32>(32u)), vec2<u32>(103719u, 1u), !vec2<bool>(true, global0.c)), Struct_1(global0.a & vec4<i32>(0i, -29373i, 1i, 0i), -2147483647i >> (var_1.x % 32u), true, _wgslsmith_sub_vec2_i32(vec2<i32>(-2091i, 1i), vec2<i32>(global0.d.x, -1i))), func_1(var_1.zx, Struct_1(vec4<i32>(-28577i, 25619i, u_input.b.x, u_input.b.x), -2147483647i, true, vec2<i32>(u_input.b.x, -20488i)), func_1(var_1.zz, Struct_1(global0.a, global0.d.x, global0.c, global0.d), vec4<bool>(false, true, true, true), u_input.a), ~1u), u_input.a), u_input.a ^ var_1.x);
    let var_3 = var_1.zz;
    var_1 = _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(select(select(vec3<u32>(u_input.a, u_input.a, 38606u), vec3<u32>(1u, 1u, var_3.x), true), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, var_3.x, 77240u), vec3<u32>(u_input.a, var_3.x, 4294967295u), vec3<u32>(0u, var_1.x, var_1.x)), !(!var_2.wzx)), _wgslsmith_sub_vec3_u32(~vec3<u32>(var_3.x, var_3.x, 5917u), ~vec3<u32>(var_3.x, 7227u, u_input.a))), vec3<u32>(reverseBits(_wgslsmith_div_u32(var_1.x, var_3.x >> (u_input.a % 32u))), 28749u, u_input.a));
    return abs(var_1.xy);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 20>();
    global0 = Struct_1(global0.a, -1i, all(select(!(!vec3<bool>(global0.c, false, global0.c)), select(!vec3<bool>(true, global0.c, global0.c), !vec3<bool>(true, false, global0.c), global0.c), vec3<bool>(true, false, any(vec2<bool>(global0.c, true))))), global0.a.xy);
    var var_0 = global1[_wgslsmith_index_u32(1u, 20u)];
    global1 = array<Struct_1, 20>();
    let var_1 = select(select(select(vec2<bool>(false, true), vec2<bool>(any(vec2<bool>(var_0.c, true)), var_0.c), global0.c), !vec2<bool>(true, u_input.a != 0u), !(!(!vec2<bool>(var_0.c, var_0.c)))), vec2<bool>(any(select(vec4<bool>(global0.c, var_0.c, true, var_0.c), select(vec4<bool>(true, var_0.c, true, global0.c), vec4<bool>(false, var_0.c, var_0.c, false), true), func_1(vec2<u32>(17973u, 4294967295u), global1[_wgslsmith_index_u32(u_input.a, 20u)], vec4<bool>(var_0.c, true, global0.c, true), 122243u))), ((var_0.d.x >= -6966i) || true) && var_0.c), func_1(_wgslsmith_mod_vec2_u32(func_3(), vec2<u32>(1u, 1u)), global1[_wgslsmith_index_u32(firstLeadingBit(26475u), 20u)], func_1(select(vec2<u32>(48006u, u_input.a), ~vec2<u32>(u_input.a, u_input.a), var_0.c && true), Struct_1(select(vec4<i32>(1i, var_0.a.x, -1i, -3085i), var_0.a, vec4<bool>(true, false, true, var_0.c)), u_input.b.x << (u_input.a % 32u), false, var_0.a.wz), func_1(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), Struct_1(vec4<i32>(u_input.b.x, u_input.b.x, var_0.d.x, var_0.b), u_input.b.x, true, var_0.d), !vec4<bool>(var_0.c, global0.c, global0.c, false), max(0u, 21161u)), 54072u), ~72399u << (~_wgslsmith_sub_u32(u_input.a, 1u) % 32u)).wy);
    var var_2 = max(u_input.a, ~1u);
    var var_3 = global1[_wgslsmith_index_u32(u_input.a, 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(629f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -445f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1222f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-287f, -211f))))));
}

