struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec3<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
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

var<private> global0: Struct_2;

var<private> global1: Struct_1;

var<private> global2: array<i32, 28> = array<i32, 28>(36892i, -2982i, 1i, 29988i, 58644i, 13247i, 2147483647i, 0i, -1i, 2147483647i, 0i, -12140i, -1i, 42191i, 0i, -63898i, -26093i, 1i, -62258i, -32992i, 6584i, 32940i, 75620i, -7887i, 2147483647i, -34343i, 40982i, -61009i);

var<private> global3: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false));

var<private> global4: Struct_2;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: u32, arg_1: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global0.b + vec3<f32>(1000f, -1291f, global4.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, -774f, -196f)))), global4.b, global4.d.x))))));
    global1 = Struct_1(false);
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.b.x, arg_1, 1598f), global0.b), global4.b))) * global0.b);
    var var_1 = ~u_input.a.zz;
    var var_2 = false;
    return var_1.x;
}

fn func_3() -> vec2<i32> {
    let var_0 = 38361i;
    let var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(global4.c.x, ~(~global2[_wgslsmith_index_u32(_wgslsmith_add_u32(48358u, 17003u), 28u)]), min(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.a.xy, vec2<u32>(0u, u_input.a.x) ^ u_input.a.yz), 28u)], firstTrailingBit(global2[_wgslsmith_index_u32(u_input.a.x | 0u, 28u)])), -1i), select(vec4<i32>(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(u_input.a.x, 28u)], -20132i) | -2147483647i, 258i, ~global2[_wgslsmith_index_u32(u_input.a.x >> (54189u % 32u), 28u)], -_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, global0.c.x, global4.c.x), vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 28u)], var_0, var_0, global2[_wgslsmith_index_u32(u_input.a.x, 28u)]))), vec4<i32>(var_0, firstLeadingBit(abs(u_input.b)), abs(var_0), reverseBits(_wgslsmith_add_i32(global4.c.x, global2[_wgslsmith_index_u32(u_input.a.x, 28u)]))), select(!vec4<bool>(global1.a, false, global1.a, global0.d.x), vec4<bool>(true, all(vec4<bool>(global4.d.x, false, global1.a, true)), global1.a, true), any(select(vec4<bool>(global0.a.x, false, true, false), vec4<bool>(global0.d.x, global4.a.x, true, false), vec4<bool>(global4.d.x, false, global0.d.x, global0.a.x))))));
    var var_2 = Struct_2(vec2<bool>(global1.a, !(!(1u < u_input.a.x))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(932f, global4.b.x)))), global0.b.x, _wgslsmith_f_op_f32(round(global0.b.x))), vec3<f32>(global4.b.x, 1342f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1758f)) + global4.b.x)))), var_1.xz, global0.d, 24875i);
    global4 = Struct_2(global0.d.yz, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-857f, global0.b.x, -190f), var_2.b, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1136f, var_2.b.x, global4.b.x), vec3<f32>(var_2.b.x, 1587f, global0.b.x)))), true)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(152f, global0.b.x, 775f), vec3<f32>(var_2.b.x, global0.b.x, global4.b.x))))), u_input.a.x != (firstLeadingBit(21356u) & _wgslsmith_div_u32(u_input.a.x, 0u)))), vec2<i32>(2147483647i, -14281i ^ _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.x, -31499i), vec2<i32>(-49029i, var_1.x)), vec2<i32>(u_input.b, var_0))), select(var_2.d, select(select(!vec3<bool>(global0.d.x, global1.a, true), global0.d, -1242f != global0.b.x), vec3<bool>(any(vec4<bool>(global1.a, true, true, global1.a)), !var_2.a.x, any(vec4<bool>(false, false, true, global4.d.x))), select(!global4.d, vec3<bool>(global0.a.x, global1.a, true), true && global1.a)), vec3<bool>(_wgslsmith_div_f32(var_2.b.x, global4.b.x) > _wgslsmith_f_op_f32(-global4.b.x), true, true)), global2[_wgslsmith_index_u32(~1u, 28u)]);
    var var_3 = Struct_2(select(!select(!vec2<bool>(global1.a, false), select(var_2.a, vec2<bool>(false, true), vec2<bool>(global0.d.x, true)), global4.b.x == 532f), select(!(!global0.d.xx), select(!vec2<bool>(global4.d.x, false), global0.d.zx, !global4.a), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) + _wgslsmith_f_op_f32(select(global0.b.x, global0.b.x, false))) <= -111f), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.b.x, 660f))), var_2.b.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)), _wgslsmith_f_op_f32(1532f + var_2.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-201f, 900f))))), vec2<i32>(select(global4.e & ~0i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_2.e, var_2.e, 0i), vec3<i32>(global2[_wgslsmith_index_u32(0u, 28u)], -31101i, u_input.b)), max(vec3<i32>(var_1.x, -2147483647i, var_1.x), vec3<i32>(global0.e, var_2.e, 25228i))), true), -(i32(-1i) * -33181i)), global4.d, select(global0.c.x, reverseBits(1i), all(var_2.d)));
    return vec2<i32>(2147483647i, -var_2.c.x);
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    let var_0 = vec4<u32>(abs(~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) >> (u_input.a.x % 32u)), u_input.a.x, func_2(_wgslsmith_mod_u32(_wgslsmith_div_u32(4731u, _wgslsmith_mult_u32(1u, arg_0.x)), u_input.a.x), global0.b.x), _wgslsmith_div_u32(arg_0.x, _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a.x, 0u), u_input.a.zx, true), vec2<u32>(abs(12211u), 1u))));
    var var_1 = _wgslsmith_dot_vec2_i32(select(vec2<i32>(_wgslsmith_dot_vec2_i32(global0.c, func_3()), ~(-global2[_wgslsmith_index_u32(24677u, 28u)])), vec2<i32>(global2[_wgslsmith_index_u32(var_0.x, 28u)], ~(-1i)) >> (~(arg_0.wz << (vec2<u32>(0u, arg_0.x) % vec2<u32>(32u))) % vec2<u32>(32u)), global0.a), global0.c);
    global0 = Struct_2(!global0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.b))) + _wgslsmith_f_op_vec3_f32(global4.b + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(209f, global4.b.x, -1131f))))))), vec2<i32>(reverseBits(countOneBits(u_input.b)), -min(global0.c.x, global2[_wgslsmith_index_u32(4294967295u, 28u)])) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(1i, -1i), -global4.c), vec3<bool>(all(global0.d), global0.a.x, -1603f <= global4.b.x), _wgslsmith_dot_vec4_i32((firstLeadingBit(vec4<i32>(20598i, 2147483647i, 0i, 0i)) >> (var_0 % vec4<u32>(32u))) | -(~vec4<i32>(global0.e, 2772i, 17981i, global4.e)), vec4<i32>(-2147483647i, global4.c.x, func_3().x, 2147483647i)));
    global0 = Struct_2(global0.a, global4.b, vec2<i32>(2147483647i, -25422i), !select(vec3<bool>(true, true, true), vec3<bool>(true, !global1.a, global1.a), global0.d), -2147483647i);
    var var_2 = _wgslsmith_f_op_f32(460f * 1000f);
    return Struct_2(!(!select(vec2<bool>(false, false), select(global4.d.yx, global4.d.zy, false), all(vec4<bool>(global0.a.x, false, global0.a.x, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(global0.b.x)), _wgslsmith_f_op_f32(global4.b.x - global0.b.x), -749f) * global0.b)), ~(-firstLeadingBit(~global4.c)), vec3<bool>(false, var_0.x != arg_0.x, !global4.d.x), u_input.b);
}

fn func_4(arg_0: Struct_2) -> bool {
    return !select(true, true, global0.a.x);
}

fn func_5(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_1(true);
    global4 = func_1(vec4<u32>(reverseBits(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(36711u, arg_2.x, arg_2.x, u_input.a.x)), vec4<u32>(u_input.a.x, arg_2.x, arg_2.x, u_input.a.x))), ~_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.a.x, 16573u, arg_2.x)), abs(u_input.a)), firstTrailingBit(arg_2.x), 1u << (_wgslsmith_add_u32(~arg_2.x, _wgslsmith_mod_u32(u_input.a.x, arg_2.x)) % 32u)));
    let var_1 = global3[_wgslsmith_index_u32(~abs(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(arg_2.x, 4294967295u, u_input.a.x, 52041u)), select(vec4<u32>(0u, arg_2.x, u_input.a.x, 82395u), vec4<u32>(1u, 14813u, 39396u, 26703u), global1.a)), _wgslsmith_add_vec4_u32(vec4<u32>(85522u, 90113u, arg_2.x, arg_2.x), vec4<u32>(14078u, arg_2.x, arg_2.x, u_input.a.x)))), 11u)];
    global2 = array<i32, 28>();
    global1 = Struct_1(true);
    return Struct_2(vec2<bool>(var_0.a, all(arg_3.yy)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b.x)), global4.b.x, -1000f), arg_1.zxw, !(!global4.d))), func_1(_wgslsmith_mult_vec4_u32(~firstLeadingBit(vec4<u32>(4294967295u, 0u, arg_2.x, 1u)), select(countOneBits(vec4<u32>(arg_2.x, u_input.a.x, 19981u, arg_2.x)), reverseBits(vec4<u32>(arg_2.x, arg_2.x, u_input.a.x, u_input.a.x)), true))).c, global4.d, u_input.b << (5769u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(~vec3<i32>(u_input.b, ~u_input.b << (u_input.a.x % 32u), countOneBits(~global2[_wgslsmith_index_u32(11774u, 28u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b.x, global0.b.x, -554f, -1146f))))) * vec4<f32>(global0.b.x, 1217f, 282f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-505f, -794f)))))), vec2<u32>(u_input.a.x, _wgslsmith_clamp_u32(4294967295u, u_input.a.x, ~(~u_input.a.x))), vec3<bool>(!(_wgslsmith_f_op_f32(-global4.b.x) > _wgslsmith_f_op_f32(-global4.b.x)), func_4(func_1(vec4<u32>(u_input.a.x, 4294967295u, 17741u, 1u))), global0.d.x));
    var var_0 = global4.a;
    let var_1 = global4.d;
    var var_2 = -1000f;
    let var_3 = vec4<i32>(u_input.b, ~countOneBits(1i), global2[_wgslsmith_index_u32(5376u, 28u)], 0i);
    var var_4 = 2413f;
    let x = u_input.a;
    s_output = StorageBuffer(-849f, vec4<i32>(1i, 1i, -63714i, _wgslsmith_mod_i32(37396i | (u_input.b >> (u_input.a.x % 32u)), global2[_wgslsmith_index_u32(u_input.a.x | 10465u, 28u)])));
}

