struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: array<u32, 15>;

var<private> global2: Struct_1 = Struct_1(vec3<i32>(2147483647i, 68237i, -47087i), 19935i, 0u, vec4<u32>(0u, 61290u, 34460u, 34994u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1) -> u32 {
    global2 = arg_2;
    global1 = array<u32, 15>();
    global2 = arg_2;
    let var_0 = false == all(select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), true), vec4<bool>(false, false, false, true), true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true)), all(select(vec2<bool>(true, false), vec2<bool>(false, false), true))));
    return 36379u;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: i32) -> bool {
    let var_0 = _wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, arg_1.x, arg_2) & global2.a, vec3<i32>(arg_1.x, 38909i, 15295i)) >> (vec3<u32>(global2.d.x, func_3(_wgslsmith_f_op_f32(f32(-1f) * -205f), ~global2.d, global0[_wgslsmith_index_u32(14775u, 16u)]), countOneBits(~32713u)) % vec3<u32>(32u)), abs(-(~select(global2.a, vec3<i32>(arg_2, global2.a.x, 1i), vec3<bool>(false, false, false)))));
    var var_1 = 1i;
    var var_2 = global0[_wgslsmith_index_u32(firstTrailingBit(~4294967295u), 16u)];
    global2 = global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(~50892u, ~0u) | _wgslsmith_sub_u32(0u >> (0u % 32u), ~var_2.c)), 15u)], 15u)], ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 15u)], 15u)]), 15u)], 16u)];
    global0 = array<Struct_1, 16>();
    return false;
}

fn func_1() -> vec4<i32> {
    var var_0 = true;
    var_0 = any(select(select(vec4<bool>(true, true, true, func_2(vec3<bool>(true, true, true), global2.a, 1i)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true))), select(vec4<bool>(true, 4294967295u < global2.c, all(vec2<bool>(false, true)), any(vec4<bool>(true, false, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), true), true));
    global2 = Struct_1(-abs(vec3<i32>(u_input.b.x >> (11877u % 32u), -48931i, 6372i)), u_input.e.x, global1[_wgslsmith_index_u32(select(5724u, global2.c, false), 15u)], global2.d);
    var var_1 = 2147483647i;
    let var_2 = Struct_1(_wgslsmith_mod_vec3_i32(u_input.c.xyx, global2.a), (0i | min(2147483647i, u_input.a)) << (firstTrailingBit(func_3(_wgslsmith_f_op_f32(round(-532f)), global2.d, global0[_wgslsmith_index_u32(~global2.d.x, 16u)])) % 32u), ~_wgslsmith_add_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~global1[_wgslsmith_index_u32(4294967295u, 15u)], func_3(-1000f, vec4<u32>(38856u, 0u, 4294967295u, global1[_wgslsmith_index_u32(1u, 15u)]), global0[_wgslsmith_index_u32(59441u, 16u)])), 15u)], abs(10136u) >> (global1[_wgslsmith_index_u32(1u, 15u)] % 32u)), vec4<u32>(~0u, countOneBits(_wgslsmith_mod_u32(75385u << (global1[_wgslsmith_index_u32(9929u, 15u)] % 32u), global1[_wgslsmith_index_u32(34321u, 15u)] & 4294967295u)), 0u, 1u));
    return vec4<i32>(12187i, ~u_input.d.x, -(~_wgslsmith_clamp_i32(var_2.a.x | -30415i, 44028i, select(var_2.a.x, -16093i, true))), abs(_wgslsmith_mult_i32(~u_input.c.x, u_input.a)) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-var_2.a.x, 64727i), u_input.d.xz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(~(~global2.a.x), 6332i, global2.a.x, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, ~u_input.c.x, _wgslsmith_dot_vec4_i32(u_input.d, _wgslsmith_mod_vec4_i32(vec4<i32>(15435i, global2.b, u_input.b.x, -36915i), u_input.e))), global2.b));
    global0 = array<Struct_1, 16>();
    var_0 = _wgslsmith_sub_vec4_i32(select(u_input.c, _wgslsmith_add_vec4_i32(abs(vec4<i32>(2147483647i, var_0.x, u_input.b.x, 32261i)), -func_1()), false), vec4<i32>(~(-2147483647i), 1i, firstTrailingBit(~var_0.x), countOneBits(_wgslsmith_div_i32(-6080i, 22269i))) >> (vec4<u32>(global2.c, global1[_wgslsmith_index_u32(select(~3804u, 33681u, select(false, true, false)), 15u)], 34707u, 7156u) % vec4<u32>(32u)));
    global2 = global0[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(224f - 1897f)))), _wgslsmith_mult_vec4_u32(global2.d, global2.d), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-739f)))), abs(~global2.d), Struct_1(min(vec3<i32>(-1i, var_0.x, 2147483647i), vec3<i32>(83944i, global2.b, 0i)), ~global2.a.x, global2.c, vec4<u32>(0u, 95730u, global2.c, 0u))), ~global2.c), 16u)]), 16u)];
    var var_1 = Struct_1(countOneBits(_wgslsmith_add_vec3_i32(func_1().zxy, _wgslsmith_mult_vec3_i32(vec3<i32>(48619i, global2.b, 2147483647i), global2.a)) | func_1().wyz), ~(-2147483647i), global2.c, global2.d << ((vec4<u32>(~global2.d.x, global1[_wgslsmith_index_u32(0u, 15u)] & 21298u, ~68814u, ~global2.d.x) >> (global2.d % vec4<u32>(32u))) % vec4<u32>(32u)));
    global0 = array<Struct_1, 16>();
    var var_2 = vec2<bool>(abs(1u) < countOneBits(var_1.c & ~4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-361f)), _wgslsmith_f_op_f32(ceil(860f)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2671f, -697f))) <= 2863f);
    var var_3 = -firstTrailingBit(var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-985f, -465f)) * _wgslsmith_f_op_f32(-1f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -192f), _wgslsmith_f_op_f32(floor(-553f)))))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -251f) + _wgslsmith_f_op_f32(-381f * -760f)), 697f)), ~_wgslsmith_clamp_vec2_u32(var_1.d.yy & var_1.d.zy, var_1.d.ww, countOneBits(vec2<u32>(var_1.c, global1[_wgslsmith_index_u32(var_1.c, 15u)]))) & (var_1.d.yx >> (var_1.d.yz % vec2<u32>(32u))));
}

