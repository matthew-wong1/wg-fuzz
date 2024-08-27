struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2>;

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_1, 14>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    return arg_1;
}

fn func_1() -> Struct_1 {
    return func_2(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_div_i32(0i, -29671i), _wgslsmith_dot_vec4_i32(vec4<i32>(17440i, 0i, 0i, 26170i), vec4<i32>(0i, 8504i, 0i, 52856i)), i32(-1i) * -78511i) << (_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, u_input.a.x, 1u), firstTrailingBit(vec3<u32>(58034u, u_input.a.x, 1u))) % vec3<u32>(32u)), min(_wgslsmith_div_vec3_i32(vec3<i32>(8275i, -2072i, 7222i), vec3<i32>(2147483647i, 24477i, 5987i)) >> ((vec3<u32>(74609u, 12216u, 4294967295u) << (vec3<u32>(u_input.a.x, u_input.a.x, 61559u) % vec3<u32>(32u))) % vec3<u32>(32u)), -min(vec3<i32>(35451i, -20414i, -1i), vec3<i32>(1i, -1i, -46671i)))), Struct_1(vec2<bool>(true, true)));
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = ~max(1u & max(~u_input.a.x, 1u), u_input.a.x ^ u_input.a.x);
    var var_1 = u_input.a;
    var_0 = 1u;
    return vec4<i32>(-_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, -8580i, -47265i, 13847i) >> ((vec4<u32>(17513u, 23002u, 20629u, 1u) & vec4<u32>(0u, u_input.a.x, u_input.a.x, var_1.x)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(-vec4<i32>(38069i, -25539i, -28009i, -1i), max(vec4<i32>(-2147483647i, -2147483647i, 1i, 9098i), vec4<i32>(-16993i, 2147483647i, -1i, 1i)))), -2147483647i, ~(-23284i), -31968i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~4294967295u, 2u)]);
    let var_1 = _wgslsmith_f_op_f32(trunc(659f));
    var var_2 = Struct_1(!global1.wx);
    var var_3 = Struct_1(!(!global1.xx));
    let var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(func_3(global2[_wgslsmith_index_u32(57168u, 14u)]), ~abs(countOneBits(vec4<i32>(1i, 0i, 1i, -1070i)))), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x));
}

