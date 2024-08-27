struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(true, vec2<f32>(-1000f, -2563f), -33331i, vec3<i32>(2147483647i, 1i, 2147483647i), vec4<i32>(64820i, 40994i, 30288i, 28023i)), Struct_1(false, vec2<f32>(827f, -1334f), -1i, vec3<i32>(-32393i, -1i, i32(-2147483648)), vec4<i32>(-1i, 0i, -1i, 0i)));

var<private> global1: Struct_1;

var<private> global2: bool = false;

var<private> global3: vec3<bool>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<u32>) -> i32 {
    var var_0 = global1.b.x;
    global2 = all(!(!global3.zx));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1193f)));
    return -42937i;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec2<i32>) -> Struct_1 {
    global0 = array<Struct_1, 2>();
    var var_0 = vec2<u32>(u_input.c.x, u_input.c.x);
    var var_1 = vec2<f32>(global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-288f - 400f)))))));
    var var_2 = vec4<i32>(firstTrailingBit(1i) | (arg_1 & (i32(-1i) * -2147483647i)), func_3(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global1.b + global1.b))), ~u_input.c ^ _wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(var_0.x, 0u, 0u, 38933u))), ~max(_wgslsmith_dot_vec4_i32(global1.e, global1.e), abs(arg_2.x)), -2147483647i) & vec4<i32>(arg_0, -global1.d.x, i32(-1i) * -arg_1, firstLeadingBit(-2147483647i));
    var var_3 = vec3<i32>(-1i) * -(vec3<i32>(_wgslsmith_add_i32(arg_0, u_input.d), 833i, ~arg_0) & global1.d);
    return Struct_1(all(!(!vec4<bool>(global3.x, global1.a, true, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x - 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x * var_1.x)))), arg_0, ~abs(var_2.wzx), vec4<i32>(abs(-arg_1) | _wgslsmith_clamp_i32(~var_3.x, abs(11389i), var_2.x), 1i, -1i ^ var_2.x, ~_wgslsmith_clamp_i32(arg_2.x, var_3.x, max(30776i, 8201i))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(1i, -13906i);
    let var_1 = global1.b.x;
    let var_2 = Struct_1(any(global3.xy), global1.b, reverseBits(~u_input.d), global1.e.xxw ^ global1.d, global1.e);
    let var_3 = func_2(_wgslsmith_sub_i32(var_2.e.x, 0i), min(u_input.d, ~_wgslsmith_add_i32(u_input.d, u_input.d) ^ ~global1.e.x), ~(-vec2<i32>(u_input.d, -u_input.d)));
    let var_4 = func_2(var_2.c, var_3.e.x, _wgslsmith_add_vec2_i32(abs(-(~vec2<i32>(-2147483647i, -4094i))), vec2<i32>(abs(51301i), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(371f, -1000f)), vec4<u32>(u_input.b, 4294967295u, 4294967295u, u_input.c.x)))));
    return func_2(14323i, _wgslsmith_mod_i32(_wgslsmith_add_i32(global1.c, -var_2.d.x), abs(_wgslsmith_div_i32(var_3.d.x, _wgslsmith_mult_i32(1i, -2147483647i)))), vec2<i32>(abs(_wgslsmith_clamp_i32(0i, min(1i, var_4.c), global1.e.x)), func_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.b.x, -341f), vec2<f32>(var_3.b.x, var_4.b.x), global3.yy)))), ~(~vec4<u32>(u_input.a.x, u_input.a.x, 22444u, u_input.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_1(!global1.a, _wgslsmith_f_op_vec2_f32(ceil(var_0.b)), var_0.e.x, select(global1.d, func_2(func_2(_wgslsmith_add_i32(-14586i, -1i), var_0.d.x, select(vec2<i32>(u_input.d, 33100i), global1.e.yy, true)).c, _wgslsmith_add_i32(max(2147483647i, -56792i), 0i), global1.d.xz).e.ywx, vec3<bool>(false, global1.a, true)), vec4<i32>(reverseBits(~firstTrailingBit(u_input.d)), ~func_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(510f, var_0.b.x), global1.b, vec2<bool>(global3.x, var_0.a))), ~u_input.c), global1.c, var_0.c));
    let var_2 = func_1();
    var var_3 = true;
    let var_4 = func_2(firstTrailingBit(reverseBits(var_1.c & -25344i)) << (firstTrailingBit(~84431u) % 32u), global1.e.x, vec2<i32>(~u_input.d, -1i));
    let var_5 = false;
    var_0 = global0[_wgslsmith_index_u32(1134u, 2u)];
    global3 = vec3<bool>(-555f <= var_0.b.x, !var_5, !var_0.a);
    var var_6 = ~_wgslsmith_clamp_vec3_u32(abs(u_input.c.xzz), vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.c.xw ^ u_input.a, ~vec2<u32>(u_input.b, 22498u)), u_input.b, 0u), countOneBits(reverseBits(vec3<u32>(73476u, 54885u, u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.zww, var_1.c, 32234u);
}

