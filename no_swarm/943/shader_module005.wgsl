struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec4<bool> = vec4<bool>(true, true, true, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: bool) -> u32 {
    let var_0 = firstTrailingBit(global0.a.b.x);
    var var_1 = Struct_3(global0.a, Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1327f - 1630f)))), false), abs(-(~_wgslsmith_div_i32(u_input.a.x, u_input.a.x))));
    var_1 = Struct_3(Struct_2(var_1.a.a, vec2<i32>(u_input.a.x, var_0), global1.x, arg_1, global1.x | true), Struct_1(_wgslsmith_div_f32(534f, _wgslsmith_f_op_f32(-global0.a.a.a)), global0.b.b), var_1.c);
    let var_2 = _wgslsmith_div_i32(_wgslsmith_add_i32(abs(_wgslsmith_sub_i32(min(var_1.a.b.x, 0i), ~0i)), 0i), var_1.c);
    global0 = Struct_3(var_1.a, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a.a.a))), any(select(!vec3<bool>(false, var_1.a.a.b, var_1.b.b), vec3<bool>(global0.b.b, true, false), global1.x & true))), u_input.a.x << (~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, arg_0)), select(vec2<u32>(1u, arg_0), vec2<u32>(arg_0, 4294967295u), vec2<bool>(false, global1.x))) % 32u));
    return ~(~(~arg_0));
}

fn func_4(arg_0: u32, arg_1: vec2<i32>) -> vec2<i32> {
    let var_0 = Struct_3(Struct_2(global0.b, _wgslsmith_clamp_vec2_i32(~(arg_1 | vec2<i32>(-7606i, arg_1.x)), vec2<i32>(~u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(arg_1.x, u_input.a.x, 1i))), vec2<i32>(~(-1i), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x))), true, true, global1.x | any(!vec4<bool>(false, true, false, global0.b.b))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(299f, -1456f, global1.x)), -727f))), false), arg_1.x);
    let var_1 = select(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yz, u_input.a.xx), u_input.a.x), global0.a.b, var_0.b.b);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1023f, var_0.a.a.a), vec2<f32>(global0.b.a, -997f)))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.a.a.a, _wgslsmith_f_op_f32(global0.b.a + global0.a.a.a)), vec2<f32>(1000f, 752f)))));
    global1 = !select(vec4<bool>(false, global1.x, !global0.b.b && select(true, var_0.a.a.b, var_0.a.a.b), true), vec4<bool>(~(-1i) > _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, arg_1.x, arg_1.x), vec3<i32>(25869i, arg_1.x, 2176i)), global0.a.c, global0.b.b, global1.x | any(vec2<bool>(false, true))), global1.x == any(select(global1.wyx, vec3<bool>(true, global1.x, false), global1.wyw)));
    var var_3 = true;
    return -vec2<i32>(4973i, 0i);
}

fn func_2(arg_0: vec3<bool>, arg_1: i32) -> Struct_3 {
    let var_0 = global0.a;
    return Struct_3(Struct_2(var_0.a, func_4(func_3(1u, true), global0.a.b), true, all(!vec3<bool>(global1.x, true, global0.a.e)), all(global1.wx)), global0.b, -52207i);
}

fn func_1() -> Struct_1 {
    let var_0 = ~_wgslsmith_add_u32(_wgslsmith_sub_u32(1u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 23556u, 5620u), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), _wgslsmith_add_u32(1u, 0u)), firstLeadingBit(select(firstTrailingBit(4294967295u), ~18606u, global1.x)));
    var var_1 = vec2<bool>(0i > _wgslsmith_dot_vec2_i32(~firstTrailingBit(global0.a.b), vec2<i32>(~11921i, global0.a.b.x)), true);
    global0 = func_2(!vec3<bool>(global1.x, false, any(global1.zzw)), _wgslsmith_add_i32(_wgslsmith_div_i32(-12245i | _wgslsmith_mod_i32(10089i, u_input.a.x), 0i >> (countOneBits(var_0) % 32u)), min(-45548i, firstTrailingBit(_wgslsmith_clamp_i32(u_input.a.x, global0.a.b.x, -1i)))));
    var var_2 = Struct_2(Struct_1(global0.b.a, true), vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(-1i, global0.c, 9549i, global0.c)), -vec4<i32>(2147483647i, -2147483647i, -49470i, global0.c)), min(vec4<i32>(global0.a.b.x, 9815i, 2147483647i, 1i), abs(vec4<i32>(52741i, u_input.a.x, 8687i, -1i)))), -73156i), global0.b.b, true, (0u ^ var_0) < 0u);
    let var_3 = global0.a;
    return Struct_1(func_2(!(!select(global1.zzx, global1.yyz, global1.wxy)), 22074i).b.a, true | !global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0.a.a.a, global1.x);
    global0 = Struct_3(Struct_2(func_1(), ~(-u_input.a.xz), global0.a.d, global1.x | !any(global1.yx), false), Struct_1(_wgslsmith_f_op_f32(step(-1338f, func_2(!vec3<bool>(true, false, var_0.b), ~21419i).a.a.a)), false), -1i);
    let var_1 = vec4<u32>(1u, 1u, 1u, 1u);
    var_0 = global0.b;
    let var_2 = func_2(!(!vec3<bool>(var_0.b, global0.a.c, 23348i <= u_input.a.x)), -1i).a.a;
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_sub_u32(var_1.x, 0u), 9013u), global0.a.b, vec4<i32>(43007i, abs(global0.a.b.x) | -(-2147483647i | u_input.a.x), -46608i, 4084i), global0.a.b.x, vec2<i32>(12901i, -23453i));
}

