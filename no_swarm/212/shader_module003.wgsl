struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: bool,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1000f, 942f, 1000f, 1027f);

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global2: array<Struct_4, 17>;

var<private> global3: vec2<u32> = vec2<u32>(1777u, 1u);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> vec4<u32> {
    var var_0 = vec4<i32>(~firstLeadingBit(-15251i), ~firstTrailingBit(-2147483647i), u_input.a & ~25238i, ~26932i);
    global3 = vec2<u32>(4294967295u, _wgslsmith_sub_u32(11415u, ~(~global3.x))) >> ((~(~vec2<u32>(0u, u_input.c.x)) ^ (u_input.b.xy >> ((countOneBits(u_input.b.yz) & firstLeadingBit(u_input.c)) % vec2<u32>(32u)))) % vec2<u32>(32u));
    var var_1 = ~_wgslsmith_dot_vec2_i32(~vec2<i32>(_wgslsmith_div_i32(-1i, var_0.x), var_0.x), (vec2<i32>(-1i) * -var_0.wx) << (firstTrailingBit(vec2<u32>(global3.x, u_input.b.x)) % vec2<u32>(32u)));
    var var_2 = Struct_1(861f, _wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(global3.x, global3.x, ~global3.x, 1u)), reverseBits(~select(vec4<u32>(57254u, 1u, global3.x, u_input.c.x), vec4<u32>(1u, global3.x, 1u, 16369u), arg_0))), ~(~firstTrailingBit(~1u)));
    var_0 = vec4<i32>(u_input.a, ~reverseBits(abs(u_input.a) << (global3.x % 32u)), 0i, countOneBits(abs(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, u_input.a, 0i), vec4<i32>(30425i, 1i, var_0.x, u_input.a)))));
    return ~firstLeadingBit(var_2.b);
}

fn func_2(arg_0: i32, arg_1: Struct_4) -> vec4<u32> {
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, -957f) * global0.x)), _wgslsmith_f_op_f32(exp2(global0.x)), -1713f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -970f, global0.x, global0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -1014f, -2006f)))))));
    let var_0 = ~u_input.a;
    var var_1 = Struct_3(Struct_1(global0.x, min(~vec4<u32>(global3.x, 1u, 0u, 52760u) & abs(vec4<u32>(4294967295u, 1u, global3.x, global3.x)), ~func_3(true)), _wgslsmith_add_u32(u_input.c.x ^ reverseBits(41995u), 4294967295u)), _wgslsmith_div_vec3_f32(vec3<f32>(-798f, _wgslsmith_f_op_f32(trunc(-819f)), global0.x), vec3<f32>(989f, global0.x, global0.x)), global0.yxy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-937f, 628f), global0.xx))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(311f, 513f)))), _wgslsmith_div_vec2_f32(global0.xw, _wgslsmith_f_op_vec2_f32(-global0.zx)))));
    var var_2 = -min(_wgslsmith_mult_i32(var_0, _wgslsmith_mult_i32(select(11056i, -1i, false), ~var_0)), -u_input.a);
    var var_3 = Struct_5(select(u_input.b.xy, ~countOneBits(u_input.b.zx), vec2<bool>(true, true)), ~_wgslsmith_add_u32(u_input.b.x, global3.x) > ~abs(var_1.a.c), _wgslsmith_f_op_vec2_f32(-global0.yw));
    return reverseBits(vec4<u32>(4294967295u | var_3.a.x, abs(var_3.a.x), 1u, var_1.a.c) | select(select(var_1.a.b ^ vec4<u32>(0u, u_input.c.x, 1u, global3.x), ~vec4<u32>(var_1.a.b.x, global3.x, 41328u, var_3.a.x), select(vec4<bool>(true, false, false, true), vec4<bool>(global1.x, true, var_3.b, global1.x), true)), vec4<u32>(var_1.a.c, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a.x, 83009u, 4294967295u, 19657u), vec4<u32>(var_1.a.b.x, global3.x, u_input.c.x, 0u)), max(4294967295u, 1913u), var_1.a.b.x), select(select(vec4<bool>(true, var_3.b, false, global1.x), vec4<bool>(false, var_3.b, true, global1.x), vec4<bool>(true, global1.x, false, global1.x)), !vec4<bool>(var_3.b, true, global1.x, global1.x), vec4<bool>(var_3.b, global1.x, var_3.b, global1.x))));
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    let var_0 = any(global1.zwy);
    var var_1 = select(u_input.a, max(min(-1i, 7691i), min(14342i, ~select(u_input.a, 2147483647i, var_0))), any(!select(select(vec4<bool>(var_0, false, false, false), vec4<bool>(false, var_0, var_0, var_0), true), select(vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(true, global1.x, true, global1.x), false), any(global1.zz))));
    var var_2 = Struct_4(vec4<i32>(-1i) * -(~abs(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))));
    let var_3 = global0.x;
    var var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global0.x))));
    return Struct_3(arg_0, vec3<f32>(524f, _wgslsmith_f_op_f32(1869f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x + global0.x)))), _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(-2109f + global0.x))), vec3<f32>(-367f, global0.x, -285f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1269f + -766f)))));
}

fn func_1(arg_0: Struct_3) -> vec4<bool> {
    let var_0 = func_4(Struct_1(global0.x, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(19561u, 0u, u_input.b.x, 18300u), vec4<u32>(u_input.c.x, arg_0.a.c, global3.x, u_input.c.x), func_2(u_input.a, Struct_4(vec4<i32>(-14067i, u_input.a, u_input.a, u_input.a)))), ~57099u));
    return select(!select(select(!vec4<bool>(global1.x, true, true, global1.x), select(vec4<bool>(global1.x, true, true, true), vec4<bool>(global1.x, false, global1.x, true), global1.x), 2147483647i == u_input.a), select(!vec4<bool>(false, false, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, global1.x, global1.x), vec4<bool>(false, true, true, global1.x), vec4<bool>(global1.x, global1.x, false, global1.x)), !vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(false, true, global1.x, global1.x))), !vec4<bool>(_wgslsmith_div_i32(u_input.a, 2147483647i) != -57383i, global1.x, any(vec3<bool>(global1.x, false, true)), !global1.x), false);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = u_input.c;
    let var_0 = _wgslsmith_clamp_i32(-1i, -1i, u_input.a);
    global1 = !(!(!select(func_1(Struct_3(Struct_1(-383f, vec4<u32>(30697u, global3.x, 23847u, 1u), u_input.c.x), vec3<f32>(global0.x, -210f, global0.x), global0.yxw, global0.xz)), select(vec4<bool>(false, false, global1.x, global1.x), vec4<bool>(global1.x, true, global1.x, global1.x), global1.x), func_1(Struct_3(Struct_1(global0.x, vec4<u32>(11831u, 9550u, global3.x, 0u), u_input.c.x), global0.zyx, vec3<f32>(global0.x, global0.x, global0.x), vec2<f32>(global0.x, global0.x))))));
    var var_1 = global2[_wgslsmith_index_u32(global3.x, 17u)];
    let var_2 = u_input.b.x;
    let var_3 = Struct_4(_wgslsmith_sub_vec4_i32(var_1.a, _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, var_0, 25933i, -16200i), ~vec4<i32>(var_0, -2147483647i, 49788i, var_0)), _wgslsmith_mult_vec4_i32(max(vec4<i32>(73007i, -2147483647i, -2147483647i, u_input.a), vec4<i32>(35269i, var_1.a.x, -2147483647i, 0i)), countOneBits(vec4<i32>(13865i, u_input.a, var_0, 0i))))));
    var var_4 = -(u_input.a & (u_input.a >> (0u % 32u)));
    let var_5 = abs(reverseBits(var_0));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(12085i, var_5), var_1.a.wy, !vec2<bool>(global1.x, true)));
}

