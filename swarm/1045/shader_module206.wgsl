struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(34247u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(16370u, 28494u), vec2<u32>(1u, 1u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(6186u, 2490u), vec2<u32>(5098u, 4294967295u), vec2<u32>(32310u, 0u), vec2<u32>(12203u, 4294967295u), vec2<u32>(26791u, 34759u), vec2<u32>(1u, 0u), vec2<u32>(32613u, 4294967295u), vec2<u32>(27245u, 0u), vec2<u32>(20967u, 54193u), vec2<u32>(14242u, 1u), vec2<u32>(69020u, 34157u), vec2<u32>(75773u, 1u), vec2<u32>(0u, 62308u), vec2<u32>(79645u, 56750u), vec2<u32>(4294967295u, 0u));

var<private> global1: Struct_1;

var<private> global2: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global3: f32;

var<private> global4: Struct_2 = Struct_2(true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0;
    global0 = array<vec2<u32>, 22>();
    global0 = array<vec2<u32>, 22>();
    return 0u;
}

fn func_2() -> Struct_1 {
    var var_0 = global1.d.xy;
    return Struct_1(firstTrailingBit(global0[_wgslsmith_index_u32(max(u_input.d, firstTrailingBit(u_input.a)), 22u)]), global2.xzw, func_3(Struct_1(global1.a, select(global1.b, select(vec3<bool>(global1.b.x, true, global2.x), vec3<bool>(false, false, global2.x), vec3<bool>(false, true, global2.x)), false), _wgslsmith_add_u32(~global1.a.x, 1u), -_wgslsmith_div_vec3_i32(vec3<i32>(-1i, 1i, -5905i), global1.d))), min(global1.d, global1.d));
}

fn func_1(arg_0: bool) -> i32 {
    global0 = array<vec2<u32>, 22>();
    global1 = func_2();
    global4 = Struct_2(!(!global4.a) || true);
    let var_0 = !(!vec4<bool>(true, global1.b.x, global1.b.x, func_2().b.x));
    let var_1 = ~_wgslsmith_add_u32(~(abs(0u) ^ _wgslsmith_add_u32(global1.c, 3027u)), u_input.c);
    return func_2().d.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(!(!vec4<bool>(!global1.b.x, !global1.b.x, true, true)), Struct_2(true), -822f, Struct_1(~(~vec2<u32>(u_input.a, 57892u)) << (max(select(global1.a, global0[_wgslsmith_index_u32(4294967295u, 22u)], vec2<bool>(global2.x, global4.a)), min(vec2<u32>(u_input.d, global1.c), global0[_wgslsmith_index_u32(u_input.b, 22u)])) % vec2<u32>(32u)), global2.xxz, 1u >> (~u_input.c % 32u), _wgslsmith_div_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, func_1(global2.x), -global1.d.x), firstLeadingBit(~global1.d))));
    var var_1 = Struct_2(var_0.a);
    global4 = func_4(!vec4<bool>(!global4.a, select(false == global2.x, true, global1.b.x), func_4(!vec4<bool>(global1.b.x, false, true, true), var_0, _wgslsmith_div_f32(-938f, -1000f), func_2()).a, var_1.a), Struct_2(!all(vec3<bool>(false, var_1.a, false)) | global2.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f))), Struct_1(vec2<u32>(global1.a.x, ~global1.c | ~u_input.b), vec3<bool>((false && global1.b.x) | true, global4.a, false), ~4294967295u, ~vec3<i32>(~global1.d.x, global1.d.x, ~(-29349i))));
    var var_2 = select(~(-firstTrailingBit(vec3<i32>(global1.d.x, global1.d.x, 0i) ^ vec3<i32>(-2147483647i, -22172i, -70288i))), firstLeadingBit(vec3<i32>(~_wgslsmith_sub_i32(30201i, -10029i), -2147483647i, _wgslsmith_dot_vec4_i32(-vec4<i32>(global1.d.x, 27230i, 0i, global1.d.x), countOneBits(vec4<i32>(global1.d.x, global1.d.x, 0i, -2147483647i))))), !(0i < -_wgslsmith_add_i32(global1.d.x, -30271i)));
    let var_3 = vec3<i32>(1i, global1.d.x, _wgslsmith_mult_i32(~(~var_2.x), _wgslsmith_div_i32(1i, -7945i) | _wgslsmith_sub_i32(var_2.x, -2147483647i))) ^ firstLeadingBit(-(global1.d & global1.d) ^ countOneBits(vec3<i32>(var_2.x, 3965i, global1.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(17907u, global1.d.x, _wgslsmith_f_op_f32(ceil(-144f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-342f, _wgslsmith_f_op_f32(f32(-1f) * -230f))) + -1800f), 1f);
}

