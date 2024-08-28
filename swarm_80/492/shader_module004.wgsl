struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<bool>;

var<private> global2: Struct_3 = Struct_3(Struct_2(10968i, Struct_1(-10080i, vec2<i32>(2147483647i, -63042i), 4294967295u), true, vec4<u32>(31496u, 33674u, 0u, 4294967295u), vec2<i32>(-1i, 10028i)), vec3<i32>(-37803i, i32(-2147483648), -39515i));

var<private> global3: vec3<bool>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -238f) + _wgslsmith_f_op_f32(939f * 1f));
    let var_1 = _wgslsmith_sub_i32(global2.a.b.a, global2.b.x);
    let var_2 = vec3<i32>(i32(-1i) * -var_1, var_1, ~(-1i)) << (countOneBits(_wgslsmith_add_vec3_u32(global2.a.d.zwz, (global2.a.d.yzx >> (vec3<u32>(global2.a.b.c, 104474u, u_input.b) % vec3<u32>(32u))) >> ((global2.a.d.wyw >> (vec3<u32>(12883u, global2.a.b.c, global2.a.b.c) % vec3<u32>(32u))) % vec3<u32>(32u)))) % vec3<u32>(32u));
    var var_3 = global2.a.b;
    global0 = -38268i;
    return Struct_1(0i, firstLeadingBit(vec2<i32>(-var_2.x, var_2.x | 35850i) >> (_wgslsmith_add_vec2_u32(vec2<u32>(global2.a.d.x, 10748u), ~vec2<u32>(u_input.a.x, global2.a.d.x)) % vec2<u32>(32u))), 1u);
}

fn func_1() -> i32 {
    global2 = Struct_3(global2.a, countOneBits(vec3<i32>(~reverseBits(57489i), -5619i, global2.a.b.a)));
    var var_0 = func_2();
    global2 = Struct_3(global2.a, global2.b);
    var_0 = global2.a.b;
    var var_1 = -461f;
    return -var_0.a;
}

fn func_3(arg_0: bool) -> f32 {
    global2 = Struct_3(global2.a, _wgslsmith_mod_vec3_i32(vec3<i32>(global2.b.x, _wgslsmith_clamp_i32(1i, ~global2.a.b.b.x, min(1i, global2.a.b.a)), func_1() | 40506i), _wgslsmith_add_vec3_i32(-global2.b, vec3<i32>(global2.a.a, -1i, global2.a.e.x)) | global2.b));
    let var_0 = global2.a;
    global2 = Struct_3(global2.a, vec3<i32>(global2.b.x, _wgslsmith_mod_i32(~global2.b.x, ~reverseBits(global2.a.a)), func_1()));
    var var_1 = !global3.yz;
    let var_2 = Struct_4(vec4<u32>(~1u, global2.a.d.x, ~global2.a.d.x, global2.a.b.c), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1488f - -1000f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(224f * -1662f)))), -2364f), global2.a.b);
    return var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(global2.a, _wgslsmith_mod_vec3_i32(global2.b, vec3<i32>(max(1i, ~global2.a.a), func_1(), -_wgslsmith_dot_vec2_i32(vec2<i32>(39375i, -14897i), vec2<i32>(global2.a.b.a, global2.a.e.x)))));
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1509f) * _wgslsmith_f_op_f32(func_3(true))) + _wgslsmith_f_op_f32(round(-962f))), _wgslsmith_f_op_f32(round(-391f))));
    let var_1 = Struct_2(global2.b.x, func_2(), global2.a.c, ~(select(~vec4<u32>(u_input.a.x, global2.a.d.x, u_input.a.x, 14355u), ~global2.a.d, global2.a.c | false) & ~(~global2.a.d)), firstTrailingBit(_wgslsmith_mod_vec2_i32(-firstLeadingBit(global2.b.xy), vec2<i32>(_wgslsmith_mult_i32(-3379i, global2.a.a), global2.a.a))));
    var var_2 = Struct_3(Struct_2(~(~0i), global2.a.b, any(!vec4<bool>(global3.x, true, global3.x, global1.x)), ~global2.a.d, ~reverseBits(vec2<i32>(global2.a.a, global2.b.x))), ~(-global2.b));
    var var_3 = vec3<f32>(var_0.x, -1093f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, 435f, var_2.a.c)) * var_0.x))));
    let var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.x)))))))));
    var var_5 = Struct_2(0i, Struct_1(var_1.b.b.x, (vec2<i32>(17454i, -6619i) ^ (global2.a.e >> (vec2<u32>(var_1.d.x, 0u) % vec2<u32>(32u)))) >> (max(select(vec2<u32>(0u, var_2.a.b.c), vec2<u32>(35922u, 5191u), true), global2.a.d.wy) % vec2<u32>(32u)), ~(~var_2.a.d.x)), var_2.a.c, (select(var_2.a.d << (vec4<u32>(u_input.a.x, var_1.d.x, 57212u, 0u) % vec4<u32>(32u)), abs(vec4<u32>(var_2.a.d.x, global2.a.b.c, 47035u, u_input.a.x)), -1826f >= var_4) ^ ~abs(vec4<u32>(u_input.b, 4294967295u, 0u, var_2.a.b.c))) ^ var_2.a.d, global2.b.xy);
    let x = u_input.a;
    s_output = StorageBuffer(~(-1i ^ _wgslsmith_add_i32(var_5.e.x, var_1.b.b.x & 17717i)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-711f - _wgslsmith_f_op_f32(var_4 * var_3.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * var_4))), _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3.x)))))), vec3<f32>(-1537f, 886f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_4))) - var_3.x)), -firstLeadingBit(_wgslsmith_add_i32(var_2.a.b.a, firstLeadingBit(var_2.a.e.x))));
}

