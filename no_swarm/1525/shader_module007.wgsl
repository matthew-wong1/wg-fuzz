struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12> = array<f32, 12>(-485f, 639f, 1675f, -1399f, -558f, 535f, -863f, -560f, 421f, 326f, -399f, 1173f);

var<private> global1: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(0i, 37487i, -28043i), vec3<i32>(2147483647i, i32(-2147483648), -16548i), vec3<i32>(1i, i32(-2147483648), -21776i), vec3<i32>(18842i, 52723i, -79198i), vec3<i32>(1i, 1i, 0i));

var<private> global2: Struct_4 = Struct_4(vec4<u32>(0u, 4294967295u, 2333u, 1u), Struct_1(vec4<bool>(false, true, false, true), true, vec3<u32>(26882u, 1u, 0u), vec2<i32>(-8895i, 31884i)), vec3<bool>(true, false, false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    return 9529u;
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> vec4<u32> {
    global0 = array<f32, 12>();
    global2 = Struct_4(~vec4<u32>(4294967295u, global2.a.x, _wgslsmith_div_u32(global2.b.c.x, 83953u) >> (~global2.b.c.x % 32u), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(global2.a.yzw, global2.a.xyy), _wgslsmith_mult_u32(global2.a.x, global2.b.c.x))), Struct_1(!(!arg_0.a.a), !arg_0.a.a.x, ~(global2.b.c ^ select(vec3<u32>(arg_0.a.c.x, 53748u, 7599u), vec3<u32>(global2.a.x, global2.a.x, global2.a.x), false)), select(global2.b.d, arg_0.a.d, false)), global2.c);
    var var_0 = global2.b.d >> ((~countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(global2.a.x, 1u), vec2<u32>(4294967295u, 24243u), global2.b.c.xz)) ^ arg_0.a.c.xy) % vec2<u32>(32u));
    let var_1 = Struct_4(vec4<u32>(global2.b.c.x, _wgslsmith_mult_u32(17804u, _wgslsmith_dot_vec2_u32(~arg_0.c.ww, ~vec2<u32>(0u, 37419u))), global2.a.x, ~global2.a.x), Struct_1(!arg_0.a.a, all(!global2.b.a.zyw), global2.a.xyy, _wgslsmith_add_vec2_i32(-arg_0.a.d << ((vec2<u32>(arg_0.b, 1u) >> (vec2<u32>(global2.a.x, global2.b.c.x) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(~u_input.b, _wgslsmith_add_i32(-1i, var_0.x)))), vec3<bool>(!(_wgslsmith_f_op_f32(abs(740f)) >= global0[_wgslsmith_index_u32(1u, 12u)]), true && (_wgslsmith_f_op_f32(abs(1155f)) < _wgslsmith_f_op_f32(step(444f, 533f))), !(!(!global2.c.x))));
    var_0 = abs(countOneBits(select(vec2<i32>(var_0.x, global2.b.d.x), vec2<i32>(-1i, 0i) ^ vec2<i32>(var_0.x, var_1.b.d.x), !var_1.c.zx))) >> (arg_0.a.c.yy % vec2<u32>(32u));
    return vec4<u32>(firstLeadingBit(global2.b.c.x), 1u, (1u | var_1.b.c.x) ^ abs(_wgslsmith_mod_u32(_wgslsmith_mult_u32(37143u, 3464u), 11480u)), arg_0.a.c.x ^ reverseBits(62710u));
}

fn func_2(arg_0: vec3<bool>) -> vec4<bool> {
    global1 = array<vec3<i32>, 5>();
    var var_0 = Struct_2(global2.b, ~global2.b.c.x | ~0u, func_4(Struct_2(Struct_1(!global2.b.a, u_input.a > global2.b.d.x, ~global2.b.c, abs(vec2<i32>(u_input.b, global2.b.d.x))), global2.a.x, ~(~vec4<u32>(0u, 4294967295u, 28478u, 42089u))), global0[_wgslsmith_index_u32(func_3(), 12u)]));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(841f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~23738u, 12u)]))));
    let var_2 = Struct_2(var_0.a, func_3(), var_0.c);
    var var_3 = !arg_0.zx;
    return select(vec4<bool>(true, var_2.a.b, (~var_0.a.d.x >> (1u % 32u)) < -(~(-38620i)), global2.c.x), select(vec4<bool>(any(!vec2<bool>(true, global2.c.x)), false, any(var_2.a.a) || true, true), var_0.a.a, any(var_0.a.a)), var_2.a.b);
}

fn func_5(arg_0: Struct_4, arg_1: i32, arg_2: Struct_1) -> Struct_4 {
    var var_0 = arg_0;
    var var_1 = arg_0.b.d.x;
    global0 = array<f32, 12>();
    let var_2 = max(func_4(Struct_2(arg_0.b, ~_wgslsmith_div_u32(4294967295u, 4294967295u), vec4<u32>(var_0.b.c.x, ~93671u, ~14u, 4294967295u)), global0[_wgslsmith_index_u32(arg_0.a.x, 12u)]).x, reverseBits(min(_wgslsmith_dot_vec3_u32(select(arg_0.b.c, arg_2.c, false), arg_0.a.xwz), 29177u)));
    var_1 = select(-65615i & _wgslsmith_mult_i32(-arg_2.d.x, -arg_0.b.d.x), ~(-1i), all(!global2.c.xx)) << (abs(23933u) % 32u);
    return arg_0;
}

fn func_1(arg_0: vec3<u32>) -> vec3<i32> {
    let var_0 = ~1u;
    global1 = array<vec3<i32>, 5>();
    let var_1 = -(vec4<i32>(~global2.b.d.x, -15905i, -firstTrailingBit(global2.b.d.x), -(global2.b.d.x & u_input.b)) << (global2.a % vec4<u32>(32u)));
    let var_2 = _wgslsmith_sub_vec3_u32(firstLeadingBit(~_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.x, 0u, 11911u), vec3<u32>(arg_0.x, 4294967295u, global2.a.x), vec3<u32>(arg_0.x, arg_0.x, global2.b.c.x)), min(vec3<u32>(var_0, 61752u, 28702u), vec3<u32>(global2.a.x, 4628u, global2.b.c.x)))), firstLeadingBit(arg_0));
    global2 = func_5(Struct_4(countOneBits(_wgslsmith_mult_vec4_u32(global2.a, global2.a) << ((vec4<u32>(global2.b.c.x, 12160u, 63601u, arg_0.x) << (vec4<u32>(0u, 1102u, var_0, 74934u) % vec4<u32>(32u))) % vec4<u32>(32u))), global2.b, !(!(!global2.b.a.wwy))), global2.b.d.x, Struct_1(func_2(vec3<bool>(global2.c.x, false, any(vec4<bool>(global2.b.a.x, false, false, false)))), true, vec3<u32>(1u, var_2.x, _wgslsmith_dot_vec3_u32(firstLeadingBit(global2.b.c), ~global2.a.zwy)), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(var_1.x, 1i), 0i), select(global2.b.d, ~var_1.zy, global2.b.a.x))));
    return vec3<i32>(~(-2147483647i), var_1.x, select(max(-27286i, -firstTrailingBit(var_1.x)), _wgslsmith_dot_vec3_i32(countOneBits(global1[_wgslsmith_index_u32(global2.a.x, 5u)]), vec3<i32>(global2.b.d.x, global2.b.d.x, 0i) | var_1.zww) | ~global2.b.d.x, global2.c.x));
}

fn func_6(arg_0: vec3<i32>, arg_1: i32, arg_2: bool, arg_3: Struct_2) -> Struct_4 {
    global0 = array<f32, 12>();
    var var_0 = countOneBits(_wgslsmith_mod_vec4_i32(-vec4<i32>(global2.b.d.x, func_1(vec3<u32>(36310u, 0u, 4294967295u)).x, 30421i, global2.b.d.x), abs(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, global2.b.d.x, 1i, global2.b.d.x), vec4<i32>(4425i, -2147483647i, 33701i, arg_0.x)), vec4<i32>(2147483647i, -2147483647i, global2.b.d.x, arg_0.x) << (vec4<u32>(global2.a.x, arg_3.b, 27141u, 4294967295u) % vec4<u32>(32u))))));
    var var_1 = -2147483647i ^ -(func_5(Struct_4(vec4<u32>(global2.b.c.x, global2.b.c.x, arg_3.c.x, 34223u), Struct_1(global2.b.a, false, arg_3.c.zzx, vec2<i32>(arg_0.x, 2147483647i)), vec3<bool>(false, true, false)), global2.b.d.x, func_5(Struct_4(global2.a, arg_3.a, arg_3.a.a.wyx), arg_0.x, global2.b).b).b.d.x >> (_wgslsmith_clamp_u32(1u, ~global2.b.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.b, 121145u, global2.b.c.x), arg_3.c.xxx)) % 32u));
    var_0 = abs(vec4<i32>(reverseBits(arg_3.a.d.x), _wgslsmith_div_i32(-4607i, 1i), -1i, select(16317i, arg_1, global2.c.x)) & -firstLeadingBit(vec4<i32>(-31440i, 2147483647i, -2147483647i, 6190i))) | _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_add_i32(func_1(vec3<u32>(1u, 4138u, global2.b.c.x)).x, _wgslsmith_add_i32(-1759i, arg_3.a.d.x)), func_5(func_5(Struct_4(vec4<u32>(arg_3.b, 0u, 0u, 0u), global2.b, vec3<bool>(true, true, true)), -23816i, global2.b), _wgslsmith_add_i32(arg_3.a.d.x, 0i), arg_3.a).b.d.x, 0i, arg_3.a.d.x), ~vec4<i32>(-arg_0.x, arg_1, u_input.b, arg_0.x));
    var var_2 = func_5(Struct_4(~vec4<u32>(_wgslsmith_mult_u32(global2.b.c.x, 34286u), _wgslsmith_clamp_u32(global2.a.x, 0u, global2.a.x), global2.b.c.x, ~global2.b.c.x), Struct_1(global2.b.a, false, global2.b.c, var_0.wy | ~var_0.ww), vec3<bool>(!(arg_3.a.a.x | arg_2), arg_0.x != ~1i, true)), 1i, Struct_1(func_2(vec3<bool>(-304f != global0[_wgslsmith_index_u32(4294967295u, 12u)], global2.c.x, any(arg_3.a.a))), global2.c.x, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(42991u, arg_3.a.c.x, arg_3.b) & global2.b.c, vec3<u32>(27529u, global2.a.x, 52549u)), max(39348u, arg_3.c.x) & ~9271u, ~(~1u)), _wgslsmith_add_vec2_i32(var_0.xw >> (arg_3.a.c.yx % vec2<u32>(32u)), arg_3.a.d ^ -arg_3.a.d)));
    return func_5(func_5(func_5(func_5(func_5(Struct_4(vec4<u32>(0u, arg_3.a.c.x, global2.b.c.x, global2.a.x), arg_3.a, arg_3.a.a.zxx), 2147483647i, arg_3.a), arg_3.a.d.x, Struct_1(arg_3.a.a, arg_3.a.b, arg_3.a.c, arg_3.a.d)), var_0.x, arg_3.a), _wgslsmith_dot_vec4_i32(~vec4<i32>(global2.b.d.x, 0i, -3618i, u_input.b) << (firstTrailingBit(vec4<u32>(global2.a.x, var_2.b.c.x, 4294967295u, 4294967295u)) % vec4<u32>(32u)), vec4<i32>(global2.b.d.x, -42979i, max(14408i, arg_1), ~189i)), var_2.b), 27462i, func_5(Struct_4(~(~vec4<u32>(26251u, arg_3.b, 16753u, arg_3.a.c.x)), var_2.b, vec3<bool>(arg_3.a.b, true, true)), ~(~global2.b.d.x), arg_3.a).b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(-2523i, global2.b.d.x, 1i)), global1[_wgslsmith_index_u32(22762u, 5u)], -func_1(~vec3<u32>(global2.b.c.x, 23639u, global2.a.x))), _wgslsmith_div_i32(1i, (i32(-1i) * -2147483647i) & global2.b.d.x), !(!(!(global2.b.b & global2.c.x))), Struct_2(Struct_1(vec4<bool>(false, any(global2.c.yz), true, true | global2.c.x), true, ~vec3<u32>(global2.a.x, global2.b.c.x, global2.b.c.x), vec2<i32>(1i, 22727i) << (global2.a.yx % vec2<u32>(32u))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(global2.a.x, global2.a.x), ~global2.b.c.x, abs(4294967295u), global2.b.c.x), global2.a), ~(vec4<u32>(global2.b.c.x, 5394u, 48490u, 0u) << (global2.a % vec4<u32>(32u)))));
    let var_1 = Struct_2(Struct_1(func_5(func_6(vec3<i32>(u_input.b, 0i, u_input.b), 1i, any(global2.c.xz), Struct_2(Struct_1(var_0.b.a, var_0.c.x, global2.a.zyz, vec2<i32>(-16955i, var_0.b.d.x)), 20156u, var_0.a)), 1i, Struct_1(global2.b.a, var_0.c.x == true, ~var_0.a.yxw, select(vec2<i32>(-2147483647i, -48326i), var_0.b.d, false))).b.a, !(_wgslsmith_f_op_f32(1044f + -1270f) >= _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(4294967295u, 12u)]))), abs(vec3<u32>(71539u, countOneBits(var_0.b.c.x), _wgslsmith_sub_u32(var_0.b.c.x, global2.a.x))), vec2<i32>(-1i, 2147483647i)), ~global2.b.c.x, vec4<u32>(_wgslsmith_mod_u32(var_0.b.c.x << (_wgslsmith_div_u32(1u, global2.b.c.x) % 32u), 1u), 12404u, global2.a.x, func_5(Struct_4(countOneBits(global2.a), func_6(vec3<i32>(1i, -2147483647i, 51498i), u_input.b, var_0.b.a.x, Struct_2(Struct_1(vec4<bool>(global2.c.x, false, global2.c.x, global2.c.x), global2.b.a.x, global2.a.wyy, vec2<i32>(984i, u_input.b)), 7543u, vec4<u32>(global2.b.c.x, var_0.b.c.x, 2799u, 4294967295u))).b, global2.b.a.ywx), 28800i, Struct_1(func_2(var_0.b.a.xzw), true, ~vec3<u32>(0u, 71283u, 0u), func_5(Struct_4(var_0.a, Struct_1(var_0.b.a, true, vec3<u32>(global2.b.c.x, var_0.a.x, global2.a.x), vec2<i32>(u_input.a, 0i)), global2.b.a.xyw), -1i, Struct_1(var_0.b.a, var_0.c.x, vec3<u32>(var_0.b.c.x, 1u, 24394u), var_0.b.d)).b.d)).a.x));
    let var_2 = -_wgslsmith_dot_vec4_i32(~(max(vec4<i32>(var_1.a.d.x, 63165i, var_1.a.d.x, var_1.a.d.x), vec4<i32>(-60730i, var_0.b.d.x, -2147483647i, 48323i)) & ~vec4<i32>(var_1.a.d.x, 2147483647i, 32941i, var_0.b.d.x)), vec4<i32>(_wgslsmith_add_i32(~global2.b.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-25023i, 3764i), vec2<i32>(global2.b.d.x, 2147483647i))), -2147483647i, -47157i, 2147483647i));
    let var_3 = global2.c.x;
    global2 = Struct_4(firstLeadingBit(vec4<u32>(~var_1.a.c.x, firstLeadingBit(57720u), 0u, _wgslsmith_clamp_u32(60613u, var_0.a.x, 4294967295u)) ^ vec4<u32>(~var_0.a.x, 1u, _wgslsmith_div_u32(1u, var_1.b), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1.a.c.x), global2.a.zx))), var_0.b, !func_5(Struct_4(var_1.c, Struct_1(vec4<bool>(global2.c.x, false, var_1.a.b, var_1.a.b), var_1.a.a.x, var_1.a.c, vec2<i32>(var_0.b.d.x, var_0.b.d.x)), !vec3<bool>(true, var_0.c.x, global2.c.x)), min(-global2.b.d.x, -1i), func_6(~vec3<i32>(5358i, 66328i, 25870i), var_1.a.d.x, false, Struct_2(global2.b, var_0.a.x, vec4<u32>(var_0.b.c.x, 4294967295u, var_1.a.c.x, var_1.a.c.x))).b).c);
    global1 = array<vec3<i32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(~global2.a.x, 117680u, 112316u, ~var_1.b)));
}

