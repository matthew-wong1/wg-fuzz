struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<u32>(52572u, 16304u, 15886u), 0u, true);

var<private> global1: Struct_1 = Struct_1(vec4<u32>(4294967295u, 770u, 4294967295u, 28685u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<i32> {
    let var_0 = true;
    global1 = Struct_1(max(~vec4<u32>(~global1.a.x, abs(global0.b), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global0.b, 57326u, 0u), global1.a)), vec4<u32>(4294967295u, global1.a.x, countOneBits(u_input.d), 47440u >> (global1.a.x % 32u))));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1000f))))));
    global0 = Struct_3(reverseBits(global1.a.zwz), max(~(global1.a.x << (8259u % 32u)), 4294967295u) | global0.b, global0.c & (var_0 & (select(u_input.e.x, u_input.e.x, global0.c) >= 1i)));
    let var_2 = Struct_2(Struct_1(vec4<u32>(global1.a.x, global0.b, ~(global0.b & 23817u), u_input.a.x << (0u % 32u))));
    return u_input.e;
}

fn func_2() -> Struct_3 {
    var var_0 = global1.a;
    var_0 = ~(global1.a | global1.a);
    let var_1 = u_input.b.x <= ~_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.e, func_3(), abs(vec2<i32>(7365i, u_input.b.x))), ~vec2<i32>(-3907i, 2147483647i) & ~vec2<i32>(u_input.b.x, -80953i));
    global1 = Struct_1(max(abs(u_input.a), firstLeadingBit(abs(vec4<u32>(38908u, global0.a.x, 13892u, 25859u))) ^ vec4<u32>(4294967295u, 1u, global0.a.x, ~1u)));
    var var_2 = Struct_4(_wgslsmith_mult_vec4_i32(~(-vec4<i32>(0i, u_input.e.x, u_input.e.x, -40208i)), -(vec4<i32>(-1i, 0i, u_input.e.x, u_input.e.x) | vec4<i32>(u_input.b.x, u_input.e.x, 6061i, 43052i))), ~global0.a.yy & var_0.yy, Struct_1(firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.yx, u_input.a.yy), abs(1u), ~16865u, 56519u))));
    return Struct_3(vec3<u32>(0u, abs(var_2.c.a.x & ~var_2.b.x), 33170u), ~abs(~_wgslsmith_add_u32(4294967295u, 0u)), true);
}

fn func_1() -> Struct_4 {
    global0 = func_2();
    let var_0 = Struct_4(-vec4<i32>(-u_input.b.x, firstLeadingBit(_wgslsmith_sub_i32(u_input.b.x, 0i)), _wgslsmith_mult_i32(73935i, u_input.e.x), func_3().x), global1.a.wz, Struct_1(u_input.a));
    let var_1 = Struct_2(var_0.c);
    var var_2 = 11997i;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1374f)))));
    return var_0;
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(arg_0.c);
    global1 = var_0.a;
    var var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(arg_2.a.x, max(13501u, 37078u), abs(43518u)), arg_2.a.x, select(global0.b ^ global0.b, ~u_input.c, true), global1.a.x), ~(_wgslsmith_sub_vec4_u32(global1.a, vec4<u32>(22152u, var_0.a.a.x, global1.a.x, arg_2.a.x)) ^ arg_2.a)) ^ (~arg_0.c.a >> (countOneBits(firstLeadingBit(u_input.a | vec4<u32>(global0.b, global0.a.x, var_0.a.a.x, 1u))) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(-arg_1);
    global1 = func_1().c;
    return func_1().c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(func_1(), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(254f + 1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -1044f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-109f, -1870f)) - _wgslsmith_f_op_f32(-1333f - -1934f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(426f)), _wgslsmith_f_op_f32(-1817f + 1000f))))), Struct_1(vec4<u32>(~0u << ((25307u & global0.b) % 32u), global0.a.x, u_input.c ^ global1.a.x, global1.a.x)));
    let var_0 = abs(vec4<u32>(~83655u, ~global1.a.x, 4294967295u, 8845u));
    global1 = func_1().c;
    var var_1 = 1000f;
    var var_2 = select(select(vec3<bool>(all(vec2<bool>(true, global0.c)), !(!global0.c), ~u_input.d >= 0u), vec3<bool>(true, true, true), global0.c), !select(!(!vec3<bool>(false, global0.c, true)), !select(vec3<bool>(false, global0.c, global0.c), vec3<bool>(global0.c, false, false), vec3<bool>(global0.c, false, global0.c)), true), !vec3<bool>(global0.c, any(vec2<bool>(true, true)), !any(vec4<bool>(false, false, global0.c, true))));
    let var_3 = select(vec2<bool>(false, true), !var_2.xz, vec2<bool>(var_2.x, any(vec4<bool>(false, true, global0.c, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(func_1(), _wgslsmith_f_op_f32(f32(-1f) * -777f), Struct_1(vec4<u32>(1u, global0.b, 4294967295u, global1.a.x))).a.x << (~_wgslsmith_clamp_u32(0u, 10563u, func_1().c.a.x) % 32u), firstLeadingBit(0u), vec2<i32>(select(1i, -u_input.b.x, true), ~_wgslsmith_mult_i32(79518i << (var_0.x % 32u), u_input.e.x)));
}

