struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 1>;

var<private> global1: array<vec4<u32>, 6>;

var<private> global2: Struct_1 = Struct_1(vec2<i32>(1i, -23463i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = Struct_2(Struct_1(global2.a), true);
    global0 = array<Struct_4, 1>();
    global2 = Struct_1(~_wgslsmith_div_vec2_i32(vec2<i32>(select(-1i, var_0.a.a.x, false), select(global2.a.x, global2.a.x, true)), var_0.a.a));
    let var_1 = ~(-1i);
    global1 = array<vec4<u32>, 6>();
    return var_1;
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    global0 = array<Struct_4, 1>();
    let var_0 = 36181i;
    global2 = arg_0.a;
    global1 = array<vec4<u32>, 6>();
    var var_1 = all(!(!select(vec3<bool>(false, false, true), vec3<bool>(arg_0.b, true, true), true)));
    return select(vec4<bool>(false, true, true, all(!select(vec4<bool>(arg_0.b, arg_0.b, arg_0.b, true), vec4<bool>(arg_0.b, arg_0.b, false, arg_0.b), vec4<bool>(arg_0.b, true, false, arg_0.b)))), select(vec4<bool>(true, arg_0.b, global2.a.x > min(u_input.b, u_input.b), arg_0.b), vec4<bool>(any(vec4<bool>(false, true, arg_0.b, arg_0.b)) & all(vec4<bool>(arg_0.b, arg_0.b, arg_0.b, false)), arg_0.b, arg_0.b, !all(vec3<bool>(true, false, false))), arg_0.b == arg_0.b), arg_0.b);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: i32, arg_3: u32) -> vec4<bool> {
    return select(vec4<bool>(arg_0.b, false, arg_0.b, ~func_2(false) < (~global2.a.x << ((u_input.a >> (4294967295u % 32u)) % 32u))), select(func_3(arg_0), !vec4<bool>(func_3(Struct_2(Struct_1(vec2<i32>(arg_2, 103369i)), false)).x, true, true, true), select(select(!vec4<bool>(false, arg_0.b, true, arg_0.b), !vec4<bool>(true, false, arg_0.b, true), vec4<bool>(true, true, arg_0.b, arg_0.b)), select(!vec4<bool>(arg_0.b, arg_0.b, true, arg_0.b), select(vec4<bool>(false, arg_0.b, false, false), vec4<bool>(false, arg_0.b, false, arg_0.b), vec4<bool>(arg_0.b, arg_0.b, false, arg_0.b)), arg_1.x > 183177u), vec4<bool>(any(vec4<bool>(arg_0.b, arg_0.b, true, false)), arg_2 == arg_0.a.a.x, true, true))), select(func_3(Struct_2(arg_0.a, !arg_0.b)), select(func_3(Struct_2(arg_0.a, true)), select(!vec4<bool>(arg_0.b, true, arg_0.b, false), func_3(arg_0), true), arg_0.b), 22759i <= -abs(u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_3(u_input.a, true), global2.a, all(!select(vec4<bool>(true, false, false, true), func_1(Struct_2(Struct_1(vec2<i32>(global2.a.x, -2147483647i)), false), vec3<u32>(5731u, 66250u, 1u), global2.a.x, u_input.a), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)))), _wgslsmith_f_op_f32(-1f));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(min(4294967295u, 36127u), ~_wgslsmith_clamp_u32(39510u, _wgslsmith_div_u32(0u, var_0.a.a), ~reverseBits(4294967295u))), 6u)];
    let var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(reverseBits(global2.a.x), min(countOneBits(_wgslsmith_mult_i32(var_0.b.x, global2.a.x)), var_0.b.x)), vec2<i32>(2147483647i, _wgslsmith_dot_vec2_i32(min(vec2<i32>(-1i, var_0.b.x), vec2<i32>(-1i, 51784i)), _wgslsmith_mod_vec2_i32(global2.a, global2.a)) | _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.b, 18354i), firstTrailingBit(global2.a.x))));
    let var_3 = _wgslsmith_f_op_f32(-var_0.d);
    var var_4 = select(min(vec2<i32>(~(~var_2.x), reverseBits(u_input.b)), ~var_2), var_0.b, any(vec3<bool>(false, var_0.c, var_0.a.b)));
    global2 = Struct_1(select(min(var_0.b, vec2<i32>(select(var_0.b.x, var_0.b.x, true), firstTrailingBit(44988i))), ~(-_wgslsmith_mult_vec2_i32(vec2<i32>(-26162i, var_2.x), var_2)), !select(func_1(Struct_2(Struct_1(vec2<i32>(-1i, global2.a.x)), false), var_1.wzw, 6486i, 15588u).zy, select(vec2<bool>(false, false), vec2<bool>(true, false), true), !vec2<bool>(false, var_0.c))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1802f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_3 + -552f)))))), -(var_2 & min(var_2, vec2<i32>(2147483647i, var_0.b.x))) | max(~vec2<i32>(0i, global2.a.x), var_0.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, -276f) + vec2<f32>(-3544f, var_3)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(513f, var_3))) + vec2<f32>(-125f, _wgslsmith_f_op_f32(517f - 132f)))));
}

