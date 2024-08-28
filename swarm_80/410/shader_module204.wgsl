struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec4<bool>(false, true, true, false), Struct_1(-1i), -1i, true), Struct_2(vec4<bool>(true, false, true, false), Struct_1(1i), 425i, true), Struct_2(vec4<bool>(true, false, true, false), Struct_1(2147483647i), -12991i, false), Struct_2(vec4<bool>(false, false, false, false), Struct_1(1i), -11288i, false), Struct_2(vec4<bool>(false, false, false, true), Struct_1(15449i), 1793i, false), Struct_2(vec4<bool>(true, true, true, false), Struct_1(24661i), 51516i, false), Struct_2(vec4<bool>(true, false, true, false), Struct_1(-15285i), 2147483647i, false), Struct_2(vec4<bool>(true, false, true, false), Struct_1(50377i), i32(-2147483648), true), Struct_2(vec4<bool>(false, true, true, false), Struct_1(i32(-2147483648)), 1i, true), Struct_2(vec4<bool>(false, false, false, false), Struct_1(-12690i), 23657i, false), Struct_2(vec4<bool>(false, true, false, false), Struct_1(-19903i), 29923i, false), Struct_2(vec4<bool>(false, true, false, true), Struct_1(19105i), 2147483647i, true), Struct_2(vec4<bool>(true, true, false, true), Struct_1(0i), 23975i, true), Struct_2(vec4<bool>(false, false, true, true), Struct_1(i32(-2147483648)), -48034i, true), Struct_2(vec4<bool>(true, true, true, true), Struct_1(-7029i), -11886i, false), Struct_2(vec4<bool>(false, false, false, true), Struct_1(0i), -30163i, true), Struct_2(vec4<bool>(true, true, false, true), Struct_1(i32(-2147483648)), 1i, false), Struct_2(vec4<bool>(true, true, true, true), Struct_1(-16315i), -1i, false), Struct_2(vec4<bool>(true, false, false, true), Struct_1(1i), 1994i, false), Struct_2(vec4<bool>(false, false, true, true), Struct_1(19601i), -1i, false), Struct_2(vec4<bool>(true, true, true, false), Struct_1(-1i), 1i, true), Struct_2(vec4<bool>(true, false, false, false), Struct_1(i32(-2147483648)), 34119i, true), Struct_2(vec4<bool>(true, false, false, false), Struct_1(0i), -734i, false), Struct_2(vec4<bool>(true, false, true, true), Struct_1(12656i), -67539i, false), Struct_2(vec4<bool>(true, true, false, true), Struct_1(0i), 6418i, true), Struct_2(vec4<bool>(true, true, true, false), Struct_1(47198i), 1i, true), Struct_2(vec4<bool>(true, false, true, true), Struct_1(36832i), -14226i, false));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = !vec4<bool>(any(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, false, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))), true, true, true);
    var var_1 = var_0;
    var_1 = vec4<bool>(true | !(any(vec3<bool>(true, true, false)) | true), true, any(vec4<bool>(false, !(-1i < arg_0.a), true, true)), false);
    var var_2 = min(select(-(vec2<i32>(arg_0.a, 1i) ^ vec2<i32>(arg_0.a, arg_0.a)), vec2<i32>(firstTrailingBit(2147483647i), 1i), select(true, false, var_1.x)) << (~u_input.a.wz % vec2<u32>(32u)), ~vec2<i32>(-4124i, ~arg_0.a));
    global0 = array<Struct_1, 32>();
    return true;
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    let var_0 = Struct_1(~_wgslsmith_mult_i32(~arg_1.b.a, reverseBits(countOneBits(arg_1.c))));
    let var_1 = Struct_2(vec4<bool>(func_3(Struct_1(reverseBits(-14192i))), func_3(var_0), ~_wgslsmith_sub_i32(-37997i, arg_1.c) < ~abs(18641i), !arg_0), Struct_1(_wgslsmith_div_i32(0i, ~(arg_1.c & var_0.a))), _wgslsmith_sub_i32(-1i, (2147483647i & ~var_0.a) << (~u_input.a.x % 32u)), true);
    let var_2 = arg_1;
    global0 = array<Struct_1, 32>();
    let var_3 = Struct_1(firstTrailingBit(var_2.b.a) << (reverseBits(_wgslsmith_mod_u32(1u, u_input.a.x) | 42749u) % 32u));
    return var_2;
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: u32) -> vec2<u32> {
    let var_0 = func_2(true, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, u_input.a.x)), ~u_input.a.zx), 27u)]);
    var var_1 = countOneBits(max(~(1u << (_wgslsmith_clamp_u32(arg_0, arg_3, arg_0) % 32u)), firstTrailingBit(~_wgslsmith_div_u32(arg_0, 1u))));
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(66608u, _wgslsmith_add_u32(arg_0, _wgslsmith_mod_u32(reverseBits(countOneBits(arg_0)), ~abs(arg_3)))), 27u)];
    return min(vec2<u32>(39983u, 4294967295u), vec2<u32>(abs(~4294967295u), _wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(arg_3, _wgslsmith_mult_u32(0u, u_input.a.x), ~arg_0, 43275u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 32>();
    var var_0 = 1u;
    global1 = array<Struct_2, 27>();
    var_0 = u_input.a.x;
    let var_1 = select(u_input.a.wy, func_1(0u, vec2<i32>(1i, 1i << (u_input.a.x % 32u)), firstTrailingBit(vec4<i32>(-1i, i32(-1i) * -1i, -555i, i32(-1i) * -2147483647i)), 1u), all(vec2<bool>(true, true)));
    global0 = array<Struct_1, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_i32(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -5484i, 1i, 1i), vec4<i32>(-1i, -2147483647i, 2147483647i, 23853i))), firstTrailingBit(_wgslsmith_mult_i32(-2147483647i, 0i))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
}

