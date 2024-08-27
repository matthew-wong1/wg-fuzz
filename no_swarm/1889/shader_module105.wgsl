struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec4<bool> {
    global0 = array<u32, 21>();
    var var_0 = ~(~25355u);
    var var_1 = false;
    var_1 = true;
    var_1 = !((global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(1u, 21u)], ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(106885u, 21u)], 21u)]), 21u)], 21u)], 21u)] | _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13055u, 21u)], 21u)], 21u)], 1u, true), 21u)], 21u)], 21u)], 21u)], 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)] >> (70521u % 32u))) < 0u);
    return vec4<bool>(select(all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), any(vec3<bool>(true, true, true)), !((global0[_wgslsmith_index_u32(1u, 21u)] != global0[_wgslsmith_index_u32(5994u, 21u)]) || all(vec2<bool>(true, true)))), false, !(!(u_input.a.x <= -u_input.a.x)), !all(vec4<bool>(true, true, true, true)));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: vec4<u32>) -> vec3<u32> {
    global0 = array<u32, 21>();
    global0 = array<u32, 21>();
    global0 = array<u32, 21>();
    let var_0 = Struct_3(vec3<bool>(!(!any(vec3<bool>(true, false, false))), any(!func_3()), true), Struct_1(~vec3<u32>(arg_2.x, arg_0.x, 21173u) ^ abs(~arg_2.xxx), vec3<u32>(~7321u, arg_0.x, abs(arg_2.x) | firstTrailingBit(arg_0.x)), ~(-1i), vec2<bool>(true, true), _wgslsmith_add_vec3_i32(~_wgslsmith_add_vec3_i32(u_input.a.wwz, vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)), _wgslsmith_sub_vec3_i32(u_input.a.zyx, vec3<i32>(-22207i, 1i, u_input.a.x)))), false, arg_0);
    var var_1 = var_0;
    return ~(~abs(abs(select(vec3<u32>(1u, var_1.b.b.x, 18813u), vec3<u32>(16987u, arg_1, 0u), vec3<bool>(var_0.c, true, true)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(44518u, 0u, 4294967295u)) << (~func_2(vec4<u32>(global0[_wgslsmith_index_u32(45296u, 21u)], global0[_wgslsmith_index_u32(47953u, 21u)], 0u, 9458u), 0u, vec4<u32>(1u, global0[_wgslsmith_index_u32(0u, 21u)], 20910u, 1u)) % vec3<u32>(32u)), abs(vec3<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 21u)], 4294967295u)) << (~countOneBits(vec3<u32>(54417u, global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], 21u)])) % vec3<u32>(32u))), select(vec3<u32>(~max(0u, global0[_wgslsmith_index_u32(0u, 21u)]), 1u, max(_wgslsmith_add_u32(1u, 0u), 74574u)), ~(~vec3<u32>(3418u, 31563u, global0[_wgslsmith_index_u32(4294967295u, 21u)])), vec3<bool>(true, !all(vec4<bool>(arg_1, false, arg_1, arg_1)), !arg_1)), -(_wgslsmith_dot_vec2_i32(~u_input.a.yx, ~vec2<i32>(42766i, 10272i)) >> (~global0[_wgslsmith_index_u32(0u << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)] % 32u), 21u)] % 32u)), select(select(vec2<bool>(true, arg_1), !vec2<bool>(true, arg_1), !any(vec3<bool>(arg_1, true, true))), func_3().yz, arg_1), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(-u_input.a.xx, max(vec2<i32>(1i, 28037i), vec2<i32>(u_input.a.x, -1i))), -(~1i), 0i), select(-vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), -u_input.a.wyw, select(vec3<bool>(true, arg_1, false), vec3<bool>(false, false, false), vec3<bool>(arg_1, false, true))) & max(vec3<i32>(u_input.a.x, -17936i, u_input.a.x), vec3<i32>(-25209i, u_input.a.x, u_input.a.x) >> (vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(23385u, 21u)], 87485u) % vec3<u32>(32u)))));
    var var_1 = ~vec2<u32>(global0[_wgslsmith_index_u32(var_0.a.x, 21u)], ~global0[_wgslsmith_index_u32(var_0.a.x, 21u)]);
    var_1 = _wgslsmith_sub_vec2_u32(var_0.b.yy, ~abs(~(~vec2<u32>(24266u, var_1.x))));
    var_1 = var_0.b.yy;
    var_0 = Struct_1(max(vec3<u32>(1u, _wgslsmith_mod_u32(var_1.x >> (var_0.a.x % 32u), var_0.a.x), reverseBits(62789u)), var_0.b), ~(~(~(~vec3<u32>(var_1.x, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)])))), abs(2147483647i), var_0.d, vec3<i32>(-1i, _wgslsmith_add_i32(2147483647i, var_0.e.x), -17518i));
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 21>();
    let var_0 = _wgslsmith_add_vec2_i32(~(~(-firstLeadingBit(u_input.a.zz))), abs(u_input.a.zz));
    global0 = array<u32, 21>();
    let var_1 = Struct_1(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19659u, 21u)], 21u)]), 1u), ~(~vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5367u, 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 26189u)))), ~(~_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(4165u, 21u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], 15570u, 0u)), _wgslsmith_div_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 146626u, global0[_wgslsmith_index_u32(0u, 21u)]), vec3<u32>(73415u, 1u, 4294967295u)))), -62159i, !(!func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1075f, 342f, -1176f) + vec3<f32>(1007f, 390f, 854f)), true)), countOneBits(~(~u_input.a.zxw)));
    global0 = array<u32, 21>();
    global0 = array<u32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_clamp_i32(1i, var_0.x, -(~(-2147483647i))), ~_wgslsmith_div_i32(~(-2147483647i), 1i), ~var_1.c, var_1.e.x));
}

