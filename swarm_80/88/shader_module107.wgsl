struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool;

var<private> global2: Struct_3 = Struct_3(false, vec4<i32>(10591i, 2147483647i, 44046i, -1i));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> u32 {
    global0 = arg_1;
    global0 = arg_1;
    var var_0 = firstTrailingBit(select(~(~(~arg_1.a.b.x)), ~36040u, arg_1.a.a));
    let var_1 = arg_1.c;
    let var_2 = vec3<bool>(!(((arg_1.c.a == true) & any(vec4<bool>(true, global2.a, false, var_1.a))) && (true & (global2.b.x == u_input.a.x))), arg_1.c.a, arg_0 < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-482f + _wgslsmith_f_op_f32(ceil(global0.e.x)))));
    return 1u;
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    global0 = Struct_2(global0.c, all(!select(vec3<bool>(true, global0.c.a, global2.a), vec3<bool>(false, true, true), global0.c.a)) && select(global0.a.a & all(vec4<bool>(global2.a, global0.a.a, false, global0.c.a)), global2.a, global0.e.x > _wgslsmith_f_op_f32(floor(3576f))), global0.c, reverseBits(_wgslsmith_clamp_vec3_u32(~global0.c.b.ywy, reverseBits(global0.c.b.wxy >> (vec3<u32>(global0.d.x, 1u, 4294967295u) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(firstLeadingBit(global0.c.b.zzx), max(global0.c.b.yww, vec3<u32>(4294967295u, global0.a.b.x, global0.c.b.x))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(global0.e + vec4<f32>(global0.e.x, global0.e.x, global0.e.x, -769f)), _wgslsmith_f_op_vec4_f32(global0.e - vec4<f32>(1371f, 691f, 1195f, global0.e.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e.x, global0.e.x, 458f, global0.e.x))))));
    global1 = global0.a.a;
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_div_f32(global0.e.x, 726f), _wgslsmith_f_op_f32(min(global0.e.x, 718f)), global0.e.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.e.x, global0.e.x, global0.e.x, -1112f), vec4<f32>(global0.e.x, -236f, global0.e.x, global0.e.x)))), vec4<f32>(868f, _wgslsmith_f_op_f32(716f + global0.e.x), _wgslsmith_div_f32(global0.e.x, 1000f), global0.e.x)))));
    var var_1 = abs(~global0.a.b.x);
    var var_2 = Struct_2(global0.a, all(select(select(vec4<bool>(false, global0.b, false, false), vec4<bool>(false, false, global0.c.a, true), any(vec4<bool>(global2.a, global0.c.a, false, global0.b))), vec4<bool>(false, global0.c.a || global2.a, false, true), vec4<bool>(global2.a, global0.a.a, global0.c.b.x > global0.d.x, true))), Struct_1(-5717i < ~_wgslsmith_add_i32(arg_0.x, global2.b.x), ~abs(global0.c.b)), ~vec3<u32>(abs(global0.d.x & global0.a.b.x), func_3(global0.e.x, Struct_2(Struct_1(global0.a.a, vec4<u32>(4294967295u, 4294967295u, 0u, global0.d.x)), global0.c.a, global0.c, vec3<u32>(1u, 97129u, global0.a.b.x), vec4<f32>(global0.e.x, 2609f, -122f, 169f))), global0.c.b.x), vec4<f32>(2011f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1323f) - global0.e.x) * _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -2703f))), var_0.x));
    return min(_wgslsmith_dot_vec2_u32(~firstTrailingBit(countOneBits(global0.a.b.xy)), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(var_2.d.yy, vec2<u32>(global0.c.b.x, global0.d.x), vec2<u32>(48339u, 1u)), global0.d.yx, ~global0.c.b.ww) | abs(vec2<u32>(global0.d.x, var_2.c.b.x) ^ vec2<u32>(global0.a.b.x, global0.a.b.x))), 0u);
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    global1 = (~global0.c.b.x ^ max(124068u, func_2(min(u_input.a, vec3<i32>(9455i, u_input.a.x, u_input.a.x))))) < 113556u;
    let var_0 = Struct_2(Struct_1(true, max(countOneBits(~arg_1.c.b), max(global0.c.b << (vec4<u32>(arg_1.a.b.x, 0u, arg_0, arg_1.a.b.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(arg_1.c.b, vec4<u32>(95851u, 1u, 110484u, 4294967295u))))), global0.a.a, global0.c, _wgslsmith_mult_vec3_u32(vec3<u32>(~global0.a.b.x, ~arg_1.a.b.x, ~abs(global0.d.x)), vec3<u32>(abs(1u), ~1u, global0.c.b.x)), arg_1.e);
    var var_1 = arg_1;
    global0 = var_0;
    var var_2 = any(!select(!vec3<bool>(var_1.c.a, true, true), !(!vec3<bool>(var_1.b, false, arg_1.b)), true));
    return global0.a;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2) -> u32 {
    var var_0 = arg_0;
    let var_1 = ~_wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -(~vec3<i32>(global2.b.x, -15148i, global2.b.x)), vec3<i32>(firstLeadingBit(-2147483647i), _wgslsmith_sub_i32(15114i, ~18638i), ~u_input.a.x & _wgslsmith_mult_i32(0i, 1i)));
    var var_2 = firstTrailingBit(-8408i);
    var var_3 = arg_1.e;
    var_0 = arg_0;
    return func_1(global0.c.b.x, Struct_2(func_1(arg_1.d.x, Struct_2(func_1(global0.d.x, arg_1), true, global0.c, select(vec3<u32>(global0.a.b.x, 36250u, arg_1.a.b.x), arg_1.c.b.ywx, true), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-515f, global0.e.x, -1651f, var_3.x), global0.e)))), true, Struct_1(true, _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.c.b.x, 18109u, 0u, 4294967295u), vec4<u32>(1u, global0.a.b.x, global0.a.b.x, 0u))), ~max(~global0.c.b.zyw, vec3<u32>(arg_1.c.b.x, global0.c.b.x, arg_1.c.b.x)), arg_1.e)).b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.c;
    let var_1 = ~vec3<u32>(func_4(!select(vec3<bool>(false, false, global0.a.a), vec3<bool>(global0.b, true, global0.b), false), Struct_2(func_1(0u, Struct_2(Struct_1(global2.a, global0.a.b), var_0.a, Struct_1(global0.c.a, var_0.b), var_0.b.www, vec4<f32>(-1000f, 296f, global0.e.x, 631f))), !global0.a.a, func_1(40598u, Struct_2(global0.a, global0.c.a, Struct_1(true, vec4<u32>(0u, global0.a.b.x, global0.d.x, 0u)), vec3<u32>(1u, 0u, 1u), global0.e)), countOneBits(global0.c.b.xzw), _wgslsmith_f_op_vec4_f32(-global0.e))), max(var_0.b.x, ~_wgslsmith_mult_u32(global0.c.b.x, var_0.b.x)), 21901u);
    var_0 = global0.a;
    global1 = all(select(!vec2<bool>(1i == global2.b.x, any(vec4<bool>(false, false, false, true))), select(!(!vec2<bool>(global0.c.a, false)), vec2<bool>(func_1(1u, Struct_2(global0.a, false, Struct_1(global2.a, var_0.b), var_0.b.yyw, global0.e)).a, global2.a), false), (_wgslsmith_f_op_f32(-387f - global0.e.x) <= _wgslsmith_f_op_f32(f32(-1f) * -446f)) && global2.a));
    var var_2 = _wgslsmith_sub_i32(~(-abs(u_input.a.x)), -1i);
    let var_3 = Struct_3(var_0.a, vec4<i32>(u_input.a.x, 1i >> (~(~var_0.b.x) % 32u), global2.b.x, -abs(global2.b.x)));
    var_2 = 2147483647i | u_input.a.x;
    let var_4 = var_3.b.x;
    let var_5 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

