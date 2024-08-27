struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<i32>,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec2<f32>, 17>;

var<private> global2: array<bool, 4>;

var<private> global3: Struct_1 = Struct_1(-6859i, vec4<f32>(-1000f, -119f, -887f, -931f), vec3<bool>(false, false, true), vec2<f32>(-857f, -316f));

var<private> global4: array<vec3<u32>, 32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: u32, arg_1: bool) -> vec2<bool> {
    return global3.c.zx;
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: vec4<u32>) -> vec3<bool> {
    let var_0 = 2996i;
    let var_1 = Struct_1(i32(-1i) * -reverseBits(reverseBits(45769i)), global3.b, !vec3<bool>(arg_0, !(!global2[_wgslsmith_index_u32(46739u, 4u)]), (arg_1.x == arg_1.x) || true), global1[_wgslsmith_index_u32(arg_2.x, 17u)]);
    global2 = array<bool, 4>();
    let var_2 = Struct_2(var_1, select(select(vec2<bool>(!global3.c.x, var_1.c.x), !global3.c.zx, all(!global3.c.yx)), func_2(~arg_1.x ^ abs(7498u), true), true), u_input.d.yy, var_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.b)))));
    global2 = array<bool, 4>();
    return !vec3<bool>(all(select(vec4<bool>(var_1.c.x, true, false, var_2.b.x), !vec4<bool>(global3.c.x, true, global3.c.x, global3.c.x), var_2.b.x)), 19778i < ((-31658i | var_2.a.a) | countOneBits(1i)), var_1.c.x & global3.c.x);
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = func_2(_wgslsmith_mult_u32(u_input.e.x, _wgslsmith_sub_u32(~max(global0.x, u_input.a), global0.x)), (-1028f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.d.x))) || (~min(global0.x, 4294967295u) == ~(~global0.x))).x;
    let var_1 = Struct_1(arg_3.a, vec4<f32>(-1130f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-576f * 1000f) + _wgslsmith_f_op_f32(620f * 115f)), _wgslsmith_f_op_f32(-548f - -274f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(arg_3.d.x)), arg_2.b.x, false)), global3.b.x), _wgslsmith_f_op_f32(floor(arg_3.d.x))), vec3<bool>(global2[_wgslsmith_index_u32(1u, 4u)], var_0, false && any(arg_3.c.yz)), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -673f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(ceil(global3.d.x))), 1387f))));
    var var_2 = u_input.b.x;
    var var_3 = Struct_1(_wgslsmith_add_i32(-54662i, arg_2.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.d.x, arg_2.d.x, -789f, arg_2.d.x))))), vec4<f32>(var_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) + arg_3.b.x), -493f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.d.x, arg_2.d.x)))), !(!arg_2.c), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.d) + global1[_wgslsmith_index_u32(~global0.x, 17u)]))));
    global1 = array<vec2<f32>, 17>();
    return Struct_1(1i, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_1.b.x, 230f)))), arg_2.d.x, 1086f, arg_3.b.x) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1557f, -1000f, arg_3.d.x, global3.d.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.x, 2471f, var_3.b.x, arg_2.d.x) - arg_3.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-690f, var_3.d.x, arg_3.b.x, var_1.b.x) * vec4<f32>(arg_3.b.x, -366f, arg_2.d.x, -571f)) - vec4<f32>(-813f, var_3.d.x, -1000f, 1661f))))), select(vec3<bool>((arg_3.b.x > -2112f) == false, var_3.c.x, arg_0.x), !global3.c, select(var_3.c, select(arg_3.c, vec3<bool>(var_3.c.x, false, arg_2.c.x), global3.c.x | var_0), max(34246u, 70704u) < (u_input.e.x >> (1u % 32u)))), var_1.b.xw);
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_2(func_3(!(!(!vec3<bool>(arg_0.c.x, false, arg_0.c.x))), reverseBits(-26552i), func_3(!func_1(false, u_input.e, vec4<u32>(u_input.e.x, global0.x, global0.x, 33501u)), 1i, arg_0, Struct_1(2147483647i, _wgslsmith_f_op_vec4_f32(-global3.b), !arg_0.c, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.d.x, 326f), vec2<f32>(-1000f, -539f), arg_0.c.xy)))), arg_0), !global3.c.xx, vec2<i32>(~(~reverseBits(1i)), abs(~(~global3.a))), func_3(arg_0.c, firstLeadingBit(u_input.c.x), arg_0, func_3(!arg_0.c, 15977i, func_3(global3.c, _wgslsmith_dot_vec4_i32(u_input.c, u_input.c), arg_0, func_3(arg_0.c, u_input.d.x, Struct_1(-27325i, global3.b, vec3<bool>(global3.c.x, arg_0.c.x, global3.c.x), vec2<f32>(735f, global3.d.x)), Struct_1(u_input.d.x, vec4<f32>(global3.b.x, global3.b.x, arg_0.d.x, global3.d.x), arg_0.c, vec2<f32>(-1097f, arg_0.d.x)))), arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global3.b, arg_0.b)))))));
    var var_1 = Struct_1(-(i32(-1i) * -min(-1i, global3.a)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-1603f, arg_0.b.x)), var_0.e.x, _wgslsmith_f_op_f32(ceil(global3.b.x)), _wgslsmith_f_op_f32(-1188f - 1560f)) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.d.x, arg_0.b.x, global3.d.x, -598f))))), _wgslsmith_f_op_vec4_f32(var_0.d.b - arg_0.b))), select(func_3(arg_0.c, _wgslsmith_mult_i32(max(-29973i, u_input.d.x), 1i), Struct_1(arg_0.a, _wgslsmith_f_op_vec4_f32(global3.b * vec4<f32>(arg_0.b.x, -670f, arg_0.b.x, arg_0.b.x)), !var_0.d.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b.x, global3.b.x) * global3.b.yx)), Struct_1(2147483647i, _wgslsmith_div_vec4_f32(arg_0.b, vec4<f32>(-130f, 359f, arg_0.b.x, 1026f)), global3.c, global1[_wgslsmith_index_u32(reverseBits(u_input.e.x), 17u)])).c, vec3<bool>(!any(vec4<bool>(true, true, global2[_wgslsmith_index_u32(global0.x, 4u)], global2[_wgslsmith_index_u32(u_input.b.x, 4u)])), true, var_0.d.c.x && true), all(!select(vec4<bool>(global3.c.x, var_0.b.x, false, false), vec4<bool>(var_0.b.x, global2[_wgslsmith_index_u32(0u, 4u)], var_0.a.c.x, true), vec4<bool>(var_0.d.c.x, true, false, global3.c.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, u_input.e.x), u_input.b.yy)), 17u)], vec2<f32>(_wgslsmith_f_op_f32(ceil(-2688f)), -1000f)))));
    var var_2 = var_0;
    let var_3 = -vec3<i32>(u_input.d.x, var_1.a, -1i);
    global3 = func_3(!vec3<bool>(true, all(vec2<bool>(arg_0.c.x, var_1.c.x)), global2[_wgslsmith_index_u32(~(~global0.x), 4u)]), _wgslsmith_mod_i32(_wgslsmith_sub_i32(~var_1.a & var_0.c.x, var_1.a << (min(4294967295u, 26132u) % 32u)), arg_0.a), func_3(vec3<bool>(false, var_0.b.x, true), -var_3.x, func_3(arg_0.c, max(firstLeadingBit(var_0.a.a), -2147483647i >> (u_input.b.x % 32u)), var_0.a, Struct_1(~1i, vec4<f32>(833f, 179f, global3.b.x, 794f), select(var_2.d.c, vec3<bool>(true, false, var_2.a.c.x), true), vec2<f32>(-723f, 129f))), var_2.d), func_3(var_1.c, -59788i, func_3(!(!vec3<bool>(global3.c.x, global2[_wgslsmith_index_u32(0u, 4u)], true)), -var_2.c.x, func_3(!arg_0.c, var_0.a.a, func_3(global3.c, u_input.d.x, arg_0, Struct_1(global3.a, var_2.a.b, vec3<bool>(var_2.b.x, true, var_0.a.c.x), vec2<f32>(-1188f, var_2.d.d.x))), func_3(vec3<bool>(false, false, var_0.a.c.x), var_3.x, arg_0, Struct_1(var_2.c.x, var_2.e, var_1.c, var_2.e.yy))), func_3(var_2.d.c, 0i, func_3(var_0.a.c, var_1.a, var_0.a, var_2.d), Struct_1(0i, vec4<f32>(110f, arg_0.b.x, var_0.a.d.x, var_1.d.x), vec3<bool>(var_1.c.x, global2[_wgslsmith_index_u32(u_input.b.x, 4u)], var_0.d.c.x), var_1.b.xw))), Struct_1(~(-36536i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1813f, -490f, var_2.a.d.x, global3.d.x)), vec4<f32>(215f, var_2.a.d.x, global3.d.x, 283f), select(vec4<bool>(true, arg_0.c.x, true, false), vec4<bool>(arg_0.c.x, false, arg_0.c.x, var_1.c.x), vec4<bool>(false, global3.c.x, false, true)))), !(!var_0.d.c), func_3(func_3(vec3<bool>(var_2.b.x, global3.c.x, true), var_0.a.a, Struct_1(var_1.a, vec4<f32>(arg_0.d.x, -597f, var_1.b.x, -1301f), vec3<bool>(true, false, global3.c.x), var_2.d.d), var_0.a).c, -2958i, func_3(var_0.a.c, global3.a, var_0.a, Struct_1(-10620i, vec4<f32>(320f, var_2.d.d.x, var_2.a.b.x, 276f), vec3<bool>(var_2.d.c.x, false, var_2.d.c.x), vec2<f32>(var_0.a.d.x, 682f))), var_0.d).d)));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_4(func_3(global3.c, -35790i, Struct_1(~54092i, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2199f, -136f, -701f, global3.b.x))), func_1(global3.c.x, vec4<u32>(25426u, global0.x, u_input.a, 4294967295u), u_input.e), _wgslsmith_div_vec2_f32(vec2<f32>(413f, -1661f), global3.d)), Struct_1(i32(-1i) * -2147483647i, _wgslsmith_f_op_vec4_f32(floor(global3.b)), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 4u)], false, global2[_wgslsmith_index_u32(global0.x, 4u)]), _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(u_input.a, 17u)] * global3.d)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.d.x), 1f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.d.x + global3.b.x), _wgslsmith_f_op_f32(-global3.b.x), true)), _wgslsmith_f_op_f32(max(736f, _wgslsmith_f_op_f32(max(global3.d.x, -409f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1352f)) + -1000f)))), func_1(false, vec4<u32>(69483u, firstTrailingBit(~u_input.b.x), ~(~u_input.a), global0.x), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, global0.x), vec3<u32>(u_input.e.x, 34422u, 37683u)), ~2939u, global0.x, global0.x >> (global0.x % 32u))), vec2<f32>(_wgslsmith_div_f32(-820f, global3.b.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) - global3.b.x), -1477f))));
    let var_1 = select(select(vec4<bool>(true || func_3(global3.c, 2147483647i, var_0, Struct_1(var_0.a, vec4<f32>(1000f, -1725f, global3.d.x, -328f), vec3<bool>(global2[_wgslsmith_index_u32(global0.x, 4u)], var_0.c.x, global3.c.x), vec2<f32>(-1000f, -1000f))).c.x, true, all(vec3<bool>(true, false, var_0.c.x)), any(!vec4<bool>(global2[_wgslsmith_index_u32(80509u, 4u)], false, var_0.c.x, global3.c.x))), !(!vec4<bool>(true, var_0.c.x, var_0.c.x, global3.c.x)), global3.c.x), !vec4<bool>(!(!var_0.c.x), global2[_wgslsmith_index_u32(reverseBits(global0.x << (global0.x % 32u)), 4u)], select(true, var_0.c.x, all(vec3<bool>(false, global2[_wgslsmith_index_u32(global0.x, 4u)], false))), any(select(vec4<bool>(global2[_wgslsmith_index_u32(13726u, 4u)], global3.c.x, true, false), vec4<bool>(false, global3.c.x, true, false), vec4<bool>(true, global3.c.x, true, global3.c.x)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(882f + var_0.d.x), min(vec4<i32>(abs(~(-2147483647i)), global3.a, firstTrailingBit(1i), global3.a), firstLeadingBit(abs(-vec4<i32>(global3.a, var_0.a, global3.a, -2147483647i)))));
}

