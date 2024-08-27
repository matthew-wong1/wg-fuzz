struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(0u, 4294967295u), vec4<i32>(-10986i, 2147483647i, 2147483647i, 1i), vec2<f32>(579f, -555f), vec2<i32>(-1i, -1i));

var<private> global1: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(4294967295u, vec3<i32>(2147483647i, -16400i, -1i)), Struct_3(4294967295u, vec3<i32>(-24538i, 9383i, 0i)), Struct_3(60061u, vec3<i32>(57027i, -18086i, 21204i)), Struct_3(4294967295u, vec3<i32>(-1769i, -21056i, 27143i)), Struct_3(35173u, vec3<i32>(-21859i, -26712i, -40628i)), Struct_3(98352u, vec3<i32>(0i, 43970i, 1i)), Struct_3(4516u, vec3<i32>(-17576i, 1i, 42982i)), Struct_3(1u, vec3<i32>(0i, 0i, -9384i)), Struct_3(1u, vec3<i32>(-1i, 31839i, 4556i)), Struct_3(59160u, vec3<i32>(-56606i, 2147483647i, 58456i)), Struct_3(2346u, vec3<i32>(45335i, 2147483647i, 0i)), Struct_3(48414u, vec3<i32>(-1i, -16870i, -13067i)), Struct_3(4294967295u, vec3<i32>(1i, 23054i, 11548i)), Struct_3(4294967295u, vec3<i32>(-18665i, 2147483647i, 10021i)), Struct_3(0u, vec3<i32>(2147483647i, -1i, i32(-2147483648))), Struct_3(69674u, vec3<i32>(1i, -21969i, i32(-2147483648))), Struct_3(155520u, vec3<i32>(0i, 21484i, i32(-2147483648))), Struct_3(4294967295u, vec3<i32>(21405i, -1i, 14302i)), Struct_3(37266u, vec3<i32>(2147483647i, 0i, 1i)), Struct_3(48123u, vec3<i32>(-1i, -67504i, 2147483647i)), Struct_3(13760u, vec3<i32>(-21580i, 21359i, i32(-2147483648))), Struct_3(0u, vec3<i32>(-5227i, 1i, 4092i)), Struct_3(0u, vec3<i32>(-27969i, 1i, 27834i)));

var<private> global2: array<i32, 3> = array<i32, 3>(0i, 1i, 2147483647i);

var<private> global3: Struct_1 = Struct_1(vec2<u32>(42329u, 26698u), vec4<i32>(5597i, 3714i, -1i, 7646i), vec2<f32>(1452f, 368f), vec2<i32>(-5227i, -16795i));

var<private> global4: array<i32, 25> = array<i32, 25>(1i, 18680i, -64954i, i32(-2147483648), 1i, 0i, 2147483647i, 0i, -3800i, 0i, i32(-2147483648), -15076i, 1i, 1i, 30138i, -32032i, -2414i, 1i, 1i, 7080i, -1i, 1i, 2147483647i, 2147483647i, -33916i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(select(global3.a, vec2<u32>(_wgslsmith_div_u32(4294967295u, global0.a.x), ~global0.a.x) & u_input.b, !vec2<bool>(any(vec2<bool>(false, true)), true)), min(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.d.x, -3685i), _wgslsmith_mod_vec2_i32(global0.b.zx, u_input.d)), u_input.e, global3.b.x, _wgslsmith_mod_i32(global0.d.x, global3.d.x) >> (~u_input.b.x % 32u)), vec4<i32>(-u_input.d.x, 48983i, max(select(global4[_wgslsmith_index_u32(u_input.c.x, 25u)], u_input.d.x, true), abs(-9554i)), global3.d.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -632f)), _wgslsmith_f_op_f32(-993f * -1000f))), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(countOneBits(u_input.d ^ vec2<i32>(5914i, -1i)), -vec2<i32>(global3.b.x, 20013i)), countOneBits(select(_wgslsmith_clamp_vec2_i32(u_input.d, vec2<i32>(-4861i, 12832i), vec2<i32>(global0.d.x, global0.d.x)), max(global3.b.xz, vec2<i32>(-60178i, u_input.e)), true))));
    global4 = array<i32, 25>();
    global2 = array<i32, 3>();
    return ~abs(4294967295u);
}

fn func_2() -> StorageBuffer {
    global4 = array<i32, 25>();
    let var_0 = func_3() | global0.a.x;
    global2 = array<i32, 3>();
    let var_1 = Struct_1(vec2<u32>(~abs(~4294967295u), 1u), ~_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(0i, u_input.d.x, -26966i), _wgslsmith_dot_vec4_i32(global0.b, vec4<i32>(global4[_wgslsmith_index_u32(global0.a.x, 25u)], 0i, 42331i, global2[_wgslsmith_index_u32(global3.a.x, 3u)])), ~global4[_wgslsmith_index_u32(global0.a.x, 25u)], -17344i), _wgslsmith_div_vec4_i32(firstTrailingBit(global3.b), global3.b >> (vec4<u32>(4294967295u, 3808u, 17199u, var_0) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.c + global3.c)), -countOneBits(vec2<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 3u)], firstLeadingBit(global4[_wgslsmith_index_u32(global3.a.x, 25u)]))));
    return StorageBuffer(var_1.c.x, var_1.c.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -105f), 1968f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(449f * global3.c.x) * _wgslsmith_f_op_f32(f32(-1f) * -234f)), _wgslsmith_f_op_f32(trunc(global3.c.x)))), vec3<u32>(abs(var_1.a.x), _wgslsmith_sub_u32(_wgslsmith_mod_u32(global3.a.x, u_input.a.x) << ((24049u << (0u % 32u)) % 32u), 1u), _wgslsmith_dot_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_0, global3.a.x, global3.a.x), vec4<u32>(1u, var_0, u_input.c.x, 33531u))), ~vec4<u32>(0u, 1u, 37353u, u_input.a.x) << (vec4<u32>(var_0, global3.a.x, 75820u, var_0) % vec4<u32>(32u)))), global0.d.x);
}

fn func_1(arg_0: f32) -> StorageBuffer {
    var var_0 = max(((countOneBits(global0.b) ^ vec4<i32>(-13291i, global2[_wgslsmith_index_u32(1u, 3u)], 2147483647i, global0.d.x)) & (vec4<i32>(1i, u_input.d.x, global2[_wgslsmith_index_u32(1u, 3u)], global2[_wgslsmith_index_u32(u_input.a.x, 3u)]) << ((vec4<u32>(global0.a.x, 5006u, 82354u, global0.a.x) >> (vec4<u32>(global3.a.x, global3.a.x, 17212u, global0.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)))) >> (~(~(vec4<u32>(1u, global0.a.x, u_input.a.x, global0.a.x) << (vec4<u32>(0u, 38422u, global0.a.x, 0u) % vec4<u32>(32u)))) % vec4<u32>(32u)), -min(-global3.b, vec4<i32>(29800i, _wgslsmith_add_i32(-17292i, 2147483647i), 33699i, _wgslsmith_add_i32(-2147483647i, global0.b.x))));
    let var_1 = vec4<i32>(-732i, 14729i ^ global3.d.x, 13968i ^ u_input.e, 1i);
    var_0 = countOneBits(vec4<i32>(var_0.x >> ((~14762u >> (u_input.a.x % 32u)) % 32u), 0i, -u_input.d.x, global4[_wgslsmith_index_u32(~global3.a.x, 25u)]));
    global2 = array<i32, 3>();
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(~(~(~global0.a.x))), u_input.a.x), 23u)];
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(global3.c.x);
}

