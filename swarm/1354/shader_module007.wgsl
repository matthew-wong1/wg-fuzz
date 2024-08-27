struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -531f;

var<private> global1: Struct_3 = Struct_3(Struct_1(vec4<f32>(-415f, -691f, 1195f, -325f)), -1939f, true);

var<private> global2: array<vec3<u32>, 10>;

var<private> global3: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false));

var<private> global4: vec3<i32>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2() -> vec4<u32> {
    var var_0 = global1.a.a;
    var var_1 = vec2<i32>(~(~1i), _wgslsmith_mult_i32(select(_wgslsmith_add_i32(global4.x, 8576i), _wgslsmith_mult_i32(_wgslsmith_mult_i32(15640i, global4.x), -12406i), true), _wgslsmith_add_i32(firstLeadingBit(0i), abs(~global4.x))));
    var var_2 = Struct_2(vec4<bool>(!global1.c, true, global1.c, !(global1.c || (u_input.a.x <= u_input.a.x))));
    var_0 = global1.a.a;
    let var_3 = select(max(_wgslsmith_div_vec3_i32(-vec3<i32>(-62176i, global4.x, -18315i), ~vec3<i32>(5567i, 2147483647i, global4.x)), vec3<i32>(1i, ~_wgslsmith_add_i32(0i, global4.x), var_1.x)), ~_wgslsmith_clamp_vec3_i32(select(countOneBits(vec3<i32>(1i, -1i, var_1.x)), vec3<i32>(1i, 17223i, global4.x) ^ vec3<i32>(0i, var_1.x, 26470i), select(vec3<bool>(false, true, var_2.a.x), global3[_wgslsmith_index_u32(u_input.a.x, 23u)], global3[_wgslsmith_index_u32(u_input.a.x, 23u)])), (vec3<i32>(-1i, var_1.x, 0i) >> (global2[_wgslsmith_index_u32(u_input.a.x, 10u)] % vec3<u32>(32u))) << (global2[_wgslsmith_index_u32(17628u, 10u)] % vec3<u32>(32u)), abs(~vec3<i32>(0i, global4.x, var_1.x))), !(!select(vec3<bool>(var_2.a.x, false, true), vec3<bool>(true, true, global1.c), global1.c)));
    return _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, ~21770u, _wgslsmith_mult_u32(0u, 21169u), _wgslsmith_sub_u32(4294967295u, u_input.a.x)), vec4<u32>(abs(~89417u), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), _wgslsmith_mult_u32(~1u, u_input.a.x), _wgslsmith_add_u32(~u_input.a.x, u_input.a.x))) << ((vec4<u32>(91359u, _wgslsmith_mod_u32(u_input.a.x, 47151u), u_input.a.x, ~reverseBits(u_input.a.x)) << (~abs(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))) % vec4<u32>(32u));
}

fn func_1(arg_0: u32, arg_1: i32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -217f));
    global2 = array<vec3<u32>, 10>();
    let var_1 = select(true, all(!(!vec2<bool>(global1.c, global1.c))), global1.c);
    var var_2 = _wgslsmith_mult_vec4_u32(func_2(), vec4<u32>(11116u, ~51211u, _wgslsmith_sub_u32(6970u, 1u), 21017u));
    global1 = Struct_3(Struct_1(global1.a.a), _wgslsmith_f_op_f32(f32(-1f) * -1000f), any(!vec4<bool>(global1.c, true, arg_1 == global4.x, global1.c && true)));
    return vec3<i32>(-1i, 2147483647i, abs(global4.x));
}

fn func_3() -> vec4<bool> {
    let var_0 = vec2<bool>(true, true);
    let var_1 = 2636u;
    let var_2 = _wgslsmith_f_op_f32(ceil(global1.a.a.x));
    let var_3 = global1.c;
    let var_4 = Struct_4(Struct_3(global1.a, _wgslsmith_f_op_f32(-var_2), true), ~vec3<u32>(var_1, _wgslsmith_add_u32(13403u, 52978u) & ~var_1, var_1), min(reverseBits(global4.x), _wgslsmith_sub_i32(abs(-global4.x), global4.x)));
    return !select(!(!select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(global1.c, false, var_4.a.c, var_0.x), var_4.a.c)), !vec4<bool>(any(vec4<bool>(true, global1.c, var_4.a.c, var_4.a.c)), var_0.x, any(vec4<bool>(false, var_4.a.c, true, global1.c)), var_0.x && false), select(false, all(vec4<bool>(global1.c, var_4.a.c, var_0.x, var_0.x)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(func_1(~107398u, _wgslsmith_clamp_i32(global4.x, global4.x >> (~1u % 32u), global4.x & global4.x)));
    var var_1 = select(!vec4<bool>(global1.c, all(vec3<bool>(false, global1.c, global1.c)) | (global1.c | global1.c), true, all(!vec4<bool>(global1.c, true, false, global1.c))), select(vec4<bool>(true, !(global1.c || true), false, true), select(func_3(), vec4<bool>(global1.c, !global1.c, global1.c, all(global3[_wgslsmith_index_u32(0u, 23u)])), !vec4<bool>(global1.c, global1.c, global1.c, global1.c)), func_3()), func_3());
    var var_2 = var_0.x;
    var var_3 = Struct_2(select(func_3(), !vec4<bool>(true, global1.a.a.x != 753f, any(vec3<bool>(global1.c, global1.c, var_1.x)), true), !func_3()));
    var_2 = -abs(_wgslsmith_add_i32(1i << (~u_input.a.x % 32u), ~(-16400i)));
    let var_4 = global4.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-370f * global1.b) - global1.a.a.x), _wgslsmith_f_op_f32(min(global1.a.a.x, _wgslsmith_f_op_f32(110f - 1000f)))))), 0u, -_wgslsmith_mod_i32(i32(-1i) * -2147483647i, -6217i), -countOneBits(var_0.x), ~(-18188i));
}

