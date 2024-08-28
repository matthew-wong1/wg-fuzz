struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 23>;

var<private> global1: array<u32, 20> = array<u32, 20>(4294967295u, 0u, 1u, 4294967295u, 6069u, 66945u, 4294967295u, 38666u, 92419u, 37698u, 0u, 81613u, 0u, 2148u, 4294967295u, 62663u, 23290u, 4294967295u, 4294967295u, 0u);

var<private> global2: array<vec2<i32>, 26>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_1.a, _wgslsmith_f_op_vec4_f32(-arg_1.a)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(arg_1.a, arg_2.a)))) + arg_2.a));
    global1 = array<u32, 20>();
    let var_1 = 26980i;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a));
    let var_3 = min(u_input.a.x & var_1, _wgslsmith_mult_i32(u_input.c.x >> (u_input.b.x % 32u), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_1, -2147483647i, 10360i, arg_0.x), reverseBits(vec4<i32>(arg_0.x, u_input.c.x, 48267i, u_input.c.x)))) >> (~u_input.d % 32u));
    return all(arg_3);
}

fn func_3(arg_0: vec4<i32>) -> bool {
    let var_0 = abs(min(_wgslsmith_sub_vec4_u32(~abs(vec4<u32>(u_input.b.x, 38234u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(36502u, 20u)], 20u)])), vec4<u32>(_wgslsmith_sub_u32(u_input.d, 1u), _wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(55740u, 20u)], 20u)], 1u), firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.e.x, 20u)], 20u)]), 22002u)), ~(~vec4<u32>(38539u, u_input.d, u_input.d, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 20u)], 20u)])) ^ ~(vec4<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4949u, 20u)], 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 20u)], 20u)], 20u)], 1u) | vec4<u32>(global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 20u)], 20u)], 49900u, u_input.e.x))));
    let var_1 = _wgslsmith_clamp_vec2_u32(u_input.e.yx, countOneBits(~u_input.b), vec2<u32>(46397u, max(global1[_wgslsmith_index_u32(~1u, 20u)], var_0.x)));
    let var_2 = ~(_wgslsmith_dot_vec4_i32(arg_0, _wgslsmith_clamp_vec4_i32(select(u_input.a, u_input.a, true), vec4<i32>(0i, 0i, -2147483647i, 18216i), ~vec4<i32>(2147483647i, arg_0.x, 0i, -11543i))) ^ arg_0.x);
    global2 = array<vec2<i32>, 26>();
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2218f, 525f) - vec2<f32>(-738f, -504f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, -2128f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1318f, 613f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1620f, -312f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-913f, 1000f))))) + vec2<f32>(_wgslsmith_f_op_f32(-358f + _wgslsmith_div_f32(_wgslsmith_div_f32(-1811f, 116f), _wgslsmith_f_op_f32(step(752f, -208f)))), 727f));
    return true;
}

fn func_1() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(872f, 132f), vec2<f32>(-483f, 604f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-811f, 357f) + vec2<f32>(161f, 125f))))))));
    let var_1 = 0i;
    var var_2 = vec2<bool>(((_wgslsmith_sub_i32(u_input.a.x, 2147483647i) > (i32(-1i) * -1i)) || all(vec2<bool>(true, false))) && !(func_2(u_input.a, Struct_1(vec4<f32>(235f, var_0.x, -680f, var_0.x)), Struct_1(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)), vec2<bool>(false, true)) || false), !(!all(vec4<bool>(true, true, true, true))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, 712f, var_0.x, var_0.x), vec4<f32>(var_0.x, 1000f, var_0.x, var_0.x))))))));
    var var_4 = !(!vec4<bool>(false, (global1[_wgslsmith_index_u32(u_input.e.x, 20u)] <= u_input.b.x) & var_2.x, func_3(vec4<i32>(var_1, 0i, 28292i, 30383i)), var_2.x));
    return vec3<bool>(!all(var_4.zwz), var_4.x, all(var_4.zyx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = var_0.x;
    let var_2 = ~u_input.a.x;
    global1 = array<u32, 20>();
    global0 = array<vec3<u32>, 23>();
    global0 = array<vec3<u32>, 23>();
    let var_3 = true;
    var var_4 = ~(vec4<u32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(25801u, global1[_wgslsmith_index_u32(u_input.b.x, 20u)]), 20u)], reverseBits(1u), u_input.d & 38943u, u_input.d | 0u) << (vec4<u32>(max(16965u, global1[_wgslsmith_index_u32(27098u, 20u)]), countOneBits(u_input.b.x), 4294967295u, ~u_input.d) % vec4<u32>(32u))) >> ((~vec4<u32>(u_input.b.x, u_input.d, global1[_wgslsmith_index_u32(0u, 20u)], ~55354u) << ((abs(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14725u, 20u)], 20u)], 80013u, 0u, 10125u) >> (vec4<u32>(u_input.e.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(53144u, 20u)], 20u)], u_input.e.x, 4660u) % vec4<u32>(32u))) << (vec4<u32>(4294967295u, _wgslsmith_add_u32(0u, 0u), u_input.e.x & 4294967295u, ~u_input.e.x) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    var_0 = vec3<bool>(var_3, true, !var_3 | var_3);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 296f, 653f), vec3<f32>(-2145f, -1000f, 371f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-497f, -116f, -1073f), vec3<f32>(-1412f, 975f, -1391f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-152f, 2026f, -1055f) * vec3<f32>(1233f, -1259f, 272f)))))), _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, var_4.x), _wgslsmith_mult_u32(1u, global1[_wgslsmith_index_u32(var_4.x, 20u)]), u_input.e.x)), vec3<u32>(var_4.x ^ var_4.x, ~u_input.b.x, 22396u) & vec3<u32>(4294967295u, 47224u, 4294967295u)), ~(~(~select(75027u, 4294967295u, true))), u_input.d);
}

