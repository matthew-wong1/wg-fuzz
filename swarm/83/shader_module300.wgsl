struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14> = array<u32, 14>(4294967295u, 1u, 20874u, 76043u, 17283u, 876u, 4294967295u, 0u, 12865u, 0u, 4294967295u, 65473u, 1u, 0u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    var var_0 = Struct_1(countOneBits(vec3<u32>(1u, ~42569u, ~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22619u, 14u)], 14u)], u_input.b.x))));
    var var_1 = global0[_wgslsmith_index_u32(select(4294967295u, ~(~0u) & _wgslsmith_mult_u32(5234u, firstTrailingBit(1u)), select(false, true, true)), 14u)];
    let var_2 = false;
    var_0 = Struct_1(var_0.a);
    let var_3 = select(vec4<bool>(false, var_2, select(_wgslsmith_sub_i32(-15238i, u_input.d.x) <= (-17776i | u_input.d.x), all(!vec2<bool>(var_2, true)), true), var_2), vec4<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 565f)) <= arg_0.x, true, !any(vec4<bool>(var_2, var_2, false, var_2)) == var_2), select(!vec4<bool>(false, all(vec2<bool>(var_2, var_2)), true, var_2), !vec4<bool>(true, var_2, var_2, any(vec3<bool>(true, var_2, true))), var_2));
    return arg_0.x;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_f32(max(-1630f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-149f, -473f, -371f) * vec3<f32>(689f, -503f, -704f)))))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: f32, arg_3: i32) -> i32 {
    var var_0 = ~_wgslsmith_div_i32(arg_3, _wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.a.x, i32(-1i) * -1i, _wgslsmith_div_i32(2147483647i, arg_1.x)), vec3<i32>(_wgslsmith_sub_i32(arg_1.x, arg_1.x), -1i, ~1i)));
    return ~(i32(-1i) * -_wgslsmith_dot_vec2_i32(u_input.a.xz >> (u_input.c % vec2<u32>(32u)), vec2<i32>(1i, u_input.d.x)));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: vec2<f32>) -> i32 {
    var var_0 = ~vec4<i32>(func_4(func_2(Struct_1(vec3<u32>(0u, 85550u, 4294967295u))), u_input.a.zzx, _wgslsmith_f_op_f32(f32(-1f) * -238f), arg_1.x), reverseBits(-2147483647i), ~(-_wgslsmith_clamp_i32(arg_1.x, 54802i, u_input.a.x)), 2933i);
    let var_1 = arg_1.x;
    var var_2 = vec3<u32>(~countOneBits(14532u), ~(countOneBits(~global0[_wgslsmith_index_u32(u_input.c.x, 14u)]) >> (~1u % 32u)), u_input.b.x);
    var_2 = vec3<u32>(~0u, var_2.x, ~min(4294967295u, 4294967295u));
    var_0 = abs(~(~(~abs(u_input.a))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    global0 = array<u32, 14>();
    global0 = array<u32, 14>();
    var var_1 = false;
    var var_2 = vec2<f32>(-694f, 1335f);
    let var_3 = countOneBits(func_1(var_2.x, u_input.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.x, -1861f), vec2<f32>(-834f, 1510f), vec2<bool>(false, true))))), vec2<f32>(-1756f, _wgslsmith_f_op_f32(-var_2.x)))));
    var var_4 = !(!vec4<bool>(true, true, true, select(false, true, true)));
    var var_5 = ~17633u;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, ~_wgslsmith_mod_vec2_i32(u_input.d.yz, vec2<i32>(2147483647i, 18848i)), ~u_input.b.x, u_input.a.yzx);
}

