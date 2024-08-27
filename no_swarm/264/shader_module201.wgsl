struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<bool>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12>;

var<private> global1: array<bool, 28> = array<bool, 28>(true, false, false, false, false, true, false, false, true, false, true, true, true, false, false, true, false, true, false, false, true, true, false, false, true, false, false, false);

var<private> global2: array<f32, 20>;

var<private> global3: f32;

var<private> global4: bool = true;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> bool {
    global0 = array<bool, 12>();
    return !(global0[_wgslsmith_index_u32(~((u_input.a.x << (u_input.b % 32u)) >> (u_input.b % 32u)), 12u)] || all(select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], false), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 28u)], false, global0[_wgslsmith_index_u32(u_input.b, 12u)]), vec4<bool>(global0[_wgslsmith_index_u32(63367u, 12u)], global0[_wgslsmith_index_u32(30605u, 12u)], true, global1[_wgslsmith_index_u32(4294967295u, 28u)])), !vec4<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)]), any(vec2<bool>(global0[_wgslsmith_index_u32(34331u, 12u)], global0[_wgslsmith_index_u32(41004u, 12u)])))));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(abs(_wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(1i, 1i)), ~vec2<i32>(0i, 1i))) << (u_input.a % vec2<u32>(32u)), firstTrailingBit(~(-abs(-28380i))), vec3<bool>(global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(~(~u_input.b), 28u)], func_2()), _wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(~vec4<u32>(104549u, u_input.b, u_input.b, u_input.a.x), vec4<u32>(21352u, 42905u, 0u, u_input.a.x) ^ vec4<u32>(u_input.b, 0u, 0u, 27838u)), vec4<u32>(u_input.b, 59065u, u_input.a.x, 48701u)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(26895i, 16998i), select(vec2<i32>(21284i, -25779i), vec2<i32>(1i, 2147483647i), true)) >> (select(~u_input.a, vec2<u32>(u_input.a.x, u_input.b), !(!vec2<bool>(global1[_wgslsmith_index_u32(8890u, 28u)], global0[_wgslsmith_index_u32(416u, 12u)]))) % vec2<u32>(32u)));
    var var_1 = var_0.c;
    global2 = array<f32, 20>();
    global3 = global2[_wgslsmith_index_u32(var_0.d.x, 20u)];
    global4 = !(global1[_wgslsmith_index_u32(4294967295u, 28u)] || !(!var_0.c.x));
    return Struct_2(var_0);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32, arg_3: Struct_1) -> vec3<i32> {
    global1 = array<bool, 28>();
    global3 = -643f;
    var var_0 = _wgslsmith_clamp_vec2_i32(firstTrailingBit(abs(-arg_1.a.a.a) ^ vec2<i32>(~19203i, firstTrailingBit(arg_3.b))), _wgslsmith_div_vec2_i32(arg_0.c.e, arg_1.a.a.a), vec2<i32>(_wgslsmith_sub_i32(abs(arg_3.b), arg_3.e.x), func_1().a.b));
    let var_1 = !vec4<bool>(~(~14242u) == _wgslsmith_add_u32(_wgslsmith_mult_u32(18555u, arg_2), ~arg_2), !global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(arg_3.d, vec4<u32>(42074u, 4294967295u, 0u, arg_1.b.a.d.x)), 12u)], !func_2(), true);
    var var_2 = true;
    return firstLeadingBit(-_wgslsmith_clamp_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, arg_1.a.a.a.x, arg_1.a.a.a.x), vec3<i32>(arg_3.e.x, arg_0.c.b, arg_0.c.a.x), vec3<i32>(arg_1.a.a.a.x, arg_0.b.a.a.x, arg_0.a.a.a.x)), ~vec3<i32>(arg_1.c.e.x, var_0.x, 68555i), _wgslsmith_div_vec3_i32(vec3<i32>(39272i, -32299i, -14413i), select(vec3<i32>(arg_1.c.e.x, 28383i, -51135i), vec3<i32>(arg_3.a.x, arg_3.a.x, 28256i), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(78390u, 20u)])) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-574f + global2[_wgslsmith_index_u32(u_input.b, 20u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(0u, 20u)])) * global2[_wgslsmith_index_u32(u_input.a.x, 20u)]))))));
    global1 = array<bool, 28>();
    var var_2 = -min(~max(min(vec3<i32>(2147483647i, 24039i, var_0.a.e.x), vec3<i32>(var_0.a.e.x, 63440i, var_0.a.e.x)), vec3<i32>(1i, var_0.a.e.x, var_0.a.e.x) & vec3<i32>(var_0.a.a.x, var_0.a.e.x, 6111i)), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a.a.x, 2147483647i, var_0.a.b), func_3(Struct_3(Struct_2(Struct_1(vec2<i32>(var_0.a.e.x, 1i), var_0.a.e.x, var_0.a.c, vec4<u32>(8636u, var_0.a.d.x, 1u, var_0.a.d.x), vec2<i32>(var_0.a.e.x, 57552i))), var_0, Struct_1(var_0.a.e, var_0.a.b, vec3<bool>(global1[_wgslsmith_index_u32(13914u, 28u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 12u)]), var_0.a.d, var_0.a.e), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 12u)], true)), Struct_3(var_0, var_0, var_0.a, vec3<bool>(global0[_wgslsmith_index_u32(var_0.a.d.x, 12u)], true, var_0.a.c.x)), 40104u, var_0.a)) >> (~var_0.a.d.zzw % vec3<u32>(32u)));
    var var_3 = vec2<i32>(_wgslsmith_mult_i32(~var_0.a.e.x, countOneBits(var_0.a.a.x)), select(0i, countOneBits(var_2.x), true));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(var_2.yy, max(var_0.a.a, var_0.a.e)), vec2<i32>(-1i) * -vec2<i32>(var_0.a.b, 0i)), _wgslsmith_mod_u32(u_input.a.x, 4294967295u));
}

