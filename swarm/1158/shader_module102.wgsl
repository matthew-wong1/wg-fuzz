struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: i32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
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

var<private> global0: array<u32, 4>;

var<private> global1: array<i32, 31>;

var<private> global2: vec3<bool> = vec3<bool>(true, false, false);

var<private> global3: vec2<u32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_1) -> f32 {
    global2 = select(arg_1.d, vec3<bool>(false, true && arg_0.x, true), global2.x);
    var var_0 = -2147483647i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, ~max(1i, -10328i), firstTrailingBit(2147483647i) << (59365u % 32u)), select(u_input.d | u_input.d, u_input.d, all(vec2<bool>(arg_0.x, true))) | ~(vec3<i32>(u_input.b, -22870i, global1[_wgslsmith_index_u32(4294967295u, 31u)]) << (vec3<u32>(0u, 0u, global3.x) % vec3<u32>(32u))));
    var_0 = 1i;
    let var_1 = arg_1;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(239f)), -610f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(764f, 397f)) - 1999f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1066f + -315f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1000f, 208f, false)), -349f, any(!vec3<bool>(true, arg_1.d.x, arg_1.d.x))))), _wgslsmith_f_op_f32(min(-902f, _wgslsmith_f_op_f32(-1161f + 1000f))));
    return var_2.x;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec2<bool>) -> i32 {
    var var_0 = true;
    let var_1 = 9439u ^ ~(~_wgslsmith_sub_u32(countOneBits(0u), 0u >> (u_input.c.x % 32u)));
    global2 = vec3<bool>(global2.x, true, global2.x);
    let var_2 = Struct_1(all(!(!(!vec4<bool>(true, arg_2.x, false, true)))), u_input.c, -(i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(-754i, global1[_wgslsmith_index_u32(var_1, 31u)], u_input.d.x, u_input.e.x), vec4<i32>(35436i, -1i, u_input.e.x, 1i))), vec3<bool>(true, true, true));
    let var_3 = _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(~abs(select(vec2<i32>(28885i, -1i), vec2<i32>(var_2.c, var_2.c), true)), u_input.d.yy), abs(~(-vec2<i32>(-2147483647i, 1i)) << (~(var_2.b << (u_input.c % vec2<u32>(32u))) % vec2<u32>(32u))));
    return var_2.c;
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    var var_0 = _wgslsmith_mod_vec2_i32(((vec2<i32>(-1i) * -arg_0.xy) ^ u_input.e) ^ vec2<i32>((-2147483647i ^ u_input.a) >> (_wgslsmith_div_u32(global0[_wgslsmith_index_u32(0u, 4u)], 113420u) % 32u), func_4(_wgslsmith_f_op_f32(func_3(vec3<bool>(false, global2.x, global2.x), Struct_1(global2.x, vec2<u32>(global3.x, u_input.c.x), u_input.e.x, vec3<bool>(global2.x, global2.x, global2.x)), u_input.c, Struct_1(global2.x, vec2<u32>(4189u, global3.x), arg_0.x, vec3<bool>(false, false, global2.x)))), _wgslsmith_f_op_f32(f32(-1f) * -917f), select(global2.xy, vec2<bool>(global2.x, false), global2.x))), firstTrailingBit(-_wgslsmith_add_vec2_i32(vec2<i32>(arg_0.x, u_input.e.x), -vec2<i32>(1i, 53123i))));
    var var_1 = ~(~min(~(~vec3<u32>(8805u, 0u, 0u)), vec3<u32>(_wgslsmith_mod_u32(global3.x, global3.x), global3.x, 4294967295u)));
    var var_2 = Struct_1(global2.x, ~select(vec2<u32>(~35611u, 67082u), select(select(vec2<u32>(global3.x, 59807u), var_1.yy, false), var_1.zy >> (var_1.yz % vec2<u32>(32u)), select(vec2<bool>(global2.x, false), global2.zy, global2.x)), global2.x), u_input.d.x, select(select(select(select(vec3<bool>(false, global2.x, true), vec3<bool>(global2.x, global2.x, true), global2.x), !vec3<bool>(false, global2.x, global2.x), any(vec3<bool>(false, global2.x, true))), select(vec3<bool>(false, global2.x, global2.x), select(vec3<bool>(global2.x, global2.x, true), vec3<bool>(false, global2.x, global2.x), vec3<bool>(false, true, global2.x)), !global2.x), select(vec3<bool>(global2.x, false, global2.x), vec3<bool>(global2.x, global2.x, true), all(vec3<bool>(global2.x, true, false)))), vec3<bool>(!global2.x, true, true), global2.x));
    global2 = !select(var_2.d, var_2.d, global2.x);
    global3 = u_input.c;
    return ~min(global1[_wgslsmith_index_u32(abs(54599u), 31u)], ~(~arg_0.x));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(true, vec2<u32>(~0u, _wgslsmith_div_u32(_wgslsmith_mult_u32(global3.x, 15831u), u_input.c.x) >> ((1u << (u_input.c.x % 32u)) % 32u)), -51281i, vec3<bool>(global2.x, global2.x, !any(vec3<bool>(true, global2.x, true))));
    var var_1 = vec4<bool>(global2.x, countOneBits(11454u) > global3.x, true, select(any(select(vec4<bool>(var_0.d.x, false, false, var_0.d.x), vec4<bool>(var_0.d.x, true, true, var_0.a), vec4<bool>(true, true, var_0.a, true))) | true, var_0.a, var_0.d.x));
    let var_2 = _wgslsmith_mult_u32(firstLeadingBit(58216u), global3.x);
    var var_3 = Struct_1(true, ~u_input.c, func_2(u_input.d) >> (firstLeadingBit(18672u) % 32u), select(var_1.wwz, vec3<bool>(any(vec3<bool>(true, global2.x, global2.x)), false, false), var_1.yyx));
    var_3 = Struct_1(select(var_0.a, var_3.a, true), ~var_3.b, var_3.c, vec3<bool>(any(!select(vec4<bool>(false, var_3.a, false, true), vec4<bool>(var_1.x, var_0.d.x, var_0.a, var_0.d.x), vec4<bool>(var_1.x, global2.x, false, var_0.a))), var_3.a, !(!global2.x)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.xz;
    let var_1 = func_1();
    global1 = array<i32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -768f));
}

