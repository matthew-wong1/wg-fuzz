struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(715f, -196f);

var<private> global1: array<Struct_1, 11>;

var<private> global2: vec4<u32> = vec4<u32>(87142u, 18802u, 1u, 55427u);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<bool>) -> vec2<bool> {
    return select(arg_0.a, arg_2.zy, select(!(!vec2<bool>(arg_0.a.x, false)), arg_2.yx, true));
}

fn func_2(arg_0: vec3<bool>) -> vec4<u32> {
    let var_0 = 1i;
    var var_1 = -countOneBits(~(~(~(-2568i))));
    let var_2 = Struct_2(select(arg_0.zx, func_3(Struct_2(select(vec2<bool>(true, false), vec2<bool>(true, arg_0.x), vec2<bool>(arg_0.x, arg_0.x))), global1[_wgslsmith_index_u32(global2.x, 11u)], arg_0), true));
    let var_3 = i32(-1i) * -13302i;
    let var_4 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), ~u_input.d.zx), global2.x, 39917u, 22824u), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(global2.x, 18105u, 31781u, 63770u)), select(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.c.x, u_input.c.x, u_input.a.x), vec4<u32>(4294967295u, 1103u, u_input.a.x, global2.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(15294u, global2.x, 4294967295u, u_input.c.x), vec4<u32>(global2.x, u_input.a.x, 34243u, global2.x)), vec4<bool>(arg_0.x, arg_0.x, false, var_2.a.x)), vec4<u32>(517u, global2.x, _wgslsmith_mod_u32(global2.x, global2.x), _wgslsmith_sub_u32(global2.x, u_input.d.x)))), 11u)];
    return ~(~((vec4<u32>(17781u, 95399u, 4294967295u, 59119u) & ~vec4<u32>(u_input.d.x, 2727u, u_input.d.x, 32810u)) ^ abs(vec4<u32>(var_4.d.x, 59181u, u_input.a.x, u_input.d.x))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<bool>) -> vec3<f32> {
    let var_0 = Struct_2(select(!func_3(Struct_2(arg_1.yz), Struct_1(vec2<i32>(u_input.e, u_input.e), vec3<i32>(u_input.e, -33830i, u_input.e), arg_1.x, vec2<u32>(30522u, 0u)), select(arg_1, arg_1, false)), arg_1.yx, select(arg_1.x, all(arg_1.zy), arg_1.x)));
    let var_1 = Struct_1(u_input.b, firstTrailingBit(~(-vec3<i32>(u_input.b.x, 5951i, u_input.b.x) | firstTrailingBit(vec3<i32>(u_input.b.x, u_input.e, -44099i)))), var_0.a.x, ~u_input.a);
    var var_2 = var_0.a;
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -441f), _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(-global0.x))), 1562f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(min(global0.x, 214f)), false)), global0.x, _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(global0.x + -326f))))))));
}

fn func_1(arg_0: i32) -> StorageBuffer {
    let var_0 = Struct_2(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), false)));
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - 387f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, 1094f) + global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-616f, global0.x, true)))), 1000f), _wgslsmith_f_op_vec3_f32(func_4(firstTrailingBit(max(vec4<u32>(u_input.d.x, 65771u, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 67356u, global2.x, 1u)) & func_2(vec3<bool>(true, false, var_0.a.x))), vec3<bool>(true & all(var_0.a), all(select(vec4<bool>(var_0.a.x, var_0.a.x, false, true), vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x), var_0.a.x)), var_0.a.x))));
    let var_2 = var_0;
    let var_3 = select(!(!select(vec3<bool>(false, var_0.a.x, var_2.a.x), !vec3<bool>(var_0.a.x, var_2.a.x, false), false)), select(select(vec3<bool>(var_2.a.x, true, all(vec4<bool>(false, var_0.a.x, false, true))), select(vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x), !vec3<bool>(false, var_2.a.x, false), false), vec3<bool>(var_0.a.x, any(vec4<bool>(true, var_2.a.x, var_2.a.x, var_0.a.x)), var_0.a.x | true)), select(!select(vec3<bool>(true, true, true), vec3<bool>(false, var_0.a.x, var_2.a.x), var_2.a.x), !vec3<bool>(var_0.a.x, var_2.a.x, true), false), !(!(!vec3<bool>(false, var_2.a.x, var_0.a.x)))), select(!(!select(vec3<bool>(var_2.a.x, true, var_0.a.x), vec3<bool>(false, true, true), vec3<bool>(false, true, var_2.a.x))), vec3<bool>(select(var_2.a.x, var_0.a.x, var_2.a.x) || true, var_2.a.x, any(vec2<bool>(true, var_0.a.x))), true));
    global2 = min(reverseBits(vec4<u32>(select(firstTrailingBit(global2.x), 23582u, true), 92879u, u_input.a.x, _wgslsmith_div_u32(~0u, u_input.c.x))), ~(~(~vec4<u32>(72361u, u_input.a.x, u_input.a.x, global2.x) | _wgslsmith_mod_vec4_u32(vec4<u32>(global2.x, global2.x, global2.x, 43474u), vec4<u32>(4294967295u, 1u, 53347u, 0u)))));
    return StorageBuffer(u_input.a.x, _wgslsmith_f_op_f32(-global0.x), 19300i, ~(~(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, -69884i), u_input.b) | (vec2<i32>(arg_0, 1i) ^ u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(-2147483647i);
}

