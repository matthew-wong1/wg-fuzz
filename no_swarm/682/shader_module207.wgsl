struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec2<i32>) -> f32 {
    global0 = true;
    var var_0 = select(vec4<i32>(~arg_2.x, 0i, 1i, ~2147483647i) ^ firstTrailingBit(vec4<i32>(2147483647i, arg_2.x, arg_2.x, 6729i)), vec4<i32>(i32(-1i) * -10494i, arg_2.x, 5258i >> (1u % 32u), _wgslsmith_add_i32(-arg_2.x, arg_2.x)), select(vec4<bool>(true, arg_0.a, arg_1, arg_1), vec4<bool>(!arg_1, arg_0.a, false, true || arg_0.a), vec4<bool>(arg_1, arg_1, !arg_0.a, arg_1))) ^ (vec4<i32>(-24764i, ~37442i, arg_2.x, firstLeadingBit(-arg_2.x)) ^ (vec4<i32>(min(-2147483647i, arg_2.x), arg_2.x, 26477i, -arg_2.x) >> (u_input.b % vec4<u32>(32u))));
    var var_1 = Struct_3(true);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -388f));
    let var_3 = arg_0;
    return _wgslsmith_f_op_f32(-var_2);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: i32) -> Struct_3 {
    var var_0 = !(false || !arg_1.a);
    let var_1 = true;
    global0 = false;
    let var_2 = Struct_2(vec3<bool>(select(true, any(vec2<bool>(var_1, arg_0.x)), _wgslsmith_f_op_f32(func_3(Struct_3(arg_0.x), true, vec2<i32>(arg_2, 0i))) > _wgslsmith_f_op_f32(trunc(-134f))), var_1 | select(all(arg_0), var_1, var_1), all(!vec2<bool>(true, arg_1.a))), !(!select(!vec4<bool>(arg_0.x, arg_0.x, true, true), vec4<bool>(arg_0.x, var_1, false, var_1), select(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_1.a, arg_1.a, var_1), false))));
    var var_3 = Struct_3(true);
    return Struct_3(any(select(!var_2.a, var_2.a, var_3.a)));
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: i32) -> vec4<bool> {
    var var_0 = vec3<bool>(true, false, (false == arg_2.b.x) & arg_2.a.x);
    let var_1 = func_2(arg_2.a.zz, Struct_3(arg_2.a.x), arg_1.x);
    let var_2 = !(!select(arg_2.b.zzz, select(vec3<bool>(true, false, true), select(arg_2.b.wxy, vec3<bool>(var_0.x, false, var_0.x), true), true), u_input.b.x <= _wgslsmith_sub_u32(100748u, u_input.a)));
    var var_3 = all(!select(!select(var_0.xy, var_0.zz, arg_2.b.zy), !select(vec2<bool>(true, var_2.x), vec2<bool>(var_2.x, arg_2.a.x), vec2<bool>(true, false)), true));
    let var_4 = ~max(1u, reverseBits(~u_input.b.x));
    return !(!(!arg_2.b));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = all(!vec3<bool>(-547f <= _wgslsmith_f_op_f32(sign(3172f)), !arg_0.x, true & (arg_1.b.x & arg_0.x)));
    var var_1 = arg_2;
    var var_2 = u_input.a;
    var var_3 = abs(~(~firstTrailingBit(vec2<i32>(2147483647i, -60129i))));
    var var_4 = arg_1;
    return StorageBuffer(_wgslsmith_sub_vec4_i32(-firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(1i, var_3.x, var_3.x, var_3.x), vec4<i32>(var_3.x, 2147483647i, 2147483647i, 1i))), ~(~(~vec4<i32>(var_3.x, var_3.x, var_3.x, -36393i)))), reverseBits(-1i), ~(max(~11685u, ~4294967295u) & (min(u_input.a, 14192u) >> (abs(u_input.b.x) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a >> (u_input.b.x % 32u);
    var_0 = u_input.b.x;
    let x = u_input.a;
    s_output = func_4(select(select(func_1(1i, vec3<i32>(1i, 1i, 1i), Struct_2(vec3<bool>(false, false, true), vec4<bool>(false, true, false, true)), _wgslsmith_mod_i32(-32026i, 55931i)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), func_1(-22482i, vec3<i32>(36197i, -2147483647i, 2147483647i), Struct_2(vec3<bool>(true, true, false), vec4<bool>(false, true, true, true)), 13896i), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, func_2(vec2<bool>(true, true), Struct_3(true), i32(-1i) * -21291i).a, all(vec4<bool>(false, false, false, true))), vec4<bool>(any(vec4<bool>(false, false, true, false)), any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false))), select(true, 19924u != u_input.a, true), false)), Struct_2(vec3<bool>(true, func_1(19479i, _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 32088i, 28033i), vec3<i32>(0i, -9608i, 1i)), Struct_2(vec3<bool>(false, true, false), vec4<bool>(true, true, false, true)), 15303i << (u_input.a % 32u)).x, !all(vec4<bool>(true, false, true, false))), vec4<bool>(true, true, _wgslsmith_dot_vec2_i32(vec2<i32>(-65585i, -11449i), vec2<i32>(80064i, -2147483647i)) <= 14746i, !all(vec2<bool>(true, false)))), Struct_1(select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), func_1(-45080i, vec3<i32>(0i, 0i, -2147483647i), Struct_2(vec3<bool>(false, false, true), vec4<bool>(false, true, false, false)), -1i).www, true), vec3<bool>(true, true, true), true)));
}

