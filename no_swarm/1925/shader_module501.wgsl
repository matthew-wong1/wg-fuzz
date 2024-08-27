struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_2,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28> = array<f32, 28>(1706f, 311f, 143f, 328f, 984f, 148f, 1000f, 149f, -1263f, 1000f, 871f, 752f, -1528f, 1075f, 329f, -625f, -785f, -806f, 1677f, -727f, 563f, 1327f, 377f, 755f, -469f, 1000f, 1747f, -1420f);

var<private> global1: array<f32, 8>;

var<private> global2: vec3<i32>;

var<private> global3: array<u32, 17> = array<u32, 17>(4294967295u, 88292u, 82214u, 31390u, 4294967295u, 10777u, 6745u, 20385u, 1u, 19638u, 16750u, 8901u, 0u, 32126u, 1u, 0u, 4294967295u);

var<private> global4: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(Struct_1(true)), Struct_4(Struct_1(false)), Struct_4(Struct_1(true)), Struct_4(Struct_1(false)), Struct_4(Struct_1(true)), Struct_4(Struct_1(false)), Struct_4(Struct_1(false)), Struct_4(Struct_1(false)), Struct_4(Struct_1(true)), Struct_4(Struct_1(false)), Struct_4(Struct_1(true)), Struct_4(Struct_1(false)), Struct_4(Struct_1(true)), Struct_4(Struct_1(true)), Struct_4(Struct_1(false)), Struct_4(Struct_1(false)), Struct_4(Struct_1(false)), Struct_4(Struct_1(false)), Struct_4(Struct_1(false)), Struct_4(Struct_1(true)));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> vec3<bool> {
    global1 = array<f32, 8>();
    let var_0 = select(~reverseBits(min(vec4<i32>(u_input.a, 2147483647i, global2.x, -1i) >> (arg_0.b % vec4<u32>(32u)), vec4<i32>(-91300i, global2.x, -8678i, -16243i))), (abs(min(vec4<i32>(-23367i, global2.x, -2778i, 1i), vec4<i32>(-1i, -2147483647i, u_input.a, 6781i))) << (_wgslsmith_add_vec4_u32(~vec4<u32>(0u, 4294967295u, global3[_wgslsmith_index_u32(arg_0.b.x, 17u)], arg_0.b.x), arg_0.b) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 35225u, 95312u), vec3<u32>(global3[_wgslsmith_index_u32(arg_0.b.x, 17u)], 4294967295u, 71726u)), ~1u), ~511u, 1u, 4923u) % vec4<u32>(32u)), false);
    var var_1 = -u_input.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, 933f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1000f, 1083f) - vec3<f32>(1000f, global1[_wgslsmith_index_u32(arg_0.b.x, 8u)], arg_1)))))));
    global3 = array<u32, 17>();
    return vec3<bool>(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-527f)) * _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(arg_0.b.x, 8u)], 442f))) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1821f, -2122f))), !select(true, arg_0.a.a | false, true), select(arg_3.a, !(!all(arg_0.c)), !arg_2));
}

fn func_2(arg_0: vec3<i32>, arg_1: bool) -> Struct_3 {
    let var_0 = Struct_2(Struct_1(true), ~firstTrailingBit(vec4<u32>(select(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(3821u, 17u)], 17u)], 17u)], 1u, true), 55132u, ~22416u, ~0u)), func_3(Struct_2(Struct_1(arg_1), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(1u, 17u)], global3[_wgslsmith_index_u32(46365u, 17u)], global3[_wgslsmith_index_u32(60912u, 17u)], 47236u), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(32630u, 17u)], 17u)], 17u)], 17u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(3645u, 17u)], 17u)], 17u)], 17u)], 17u)], 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(47822u, 17u)], 17u)]))), !(!vec3<bool>(arg_1, false, false)), 428f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -316f) - _wgslsmith_f_op_f32(f32(-1f) * -198f)), arg_1, Struct_1(arg_1)), _wgslsmith_f_op_f32(1053f * global0[_wgslsmith_index_u32(firstLeadingBit(0u), 28u)]));
    let var_1 = vec3<i32>(arg_0.x, 15978i, global2.x);
    var var_2 = global1[_wgslsmith_index_u32(var_0.b.x, 8u)];
    var var_3 = !(!var_0.c);
    global0 = array<f32, 28>();
    return Struct_3(var_0, var_0.a, select(select(!select(vec4<bool>(arg_1, var_3.x, false, var_0.a.a), vec4<bool>(false, arg_1, arg_1, var_3.x), false), vec4<bool>(false, var_3.x & var_3.x, true, any(var_3.xz)), any(vec4<bool>(false, false, var_0.a.a, false))), !(!vec4<bool>(arg_1, arg_1, arg_1, arg_1)), arg_1), var_0, !(!(!var_0.c.yx)));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: bool, arg_3: f32) -> Struct_1 {
    global4 = array<Struct_4, 20>();
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(925f - _wgslsmith_f_op_f32(f32(-1f) * -1455f)), -988f)), -1471f, global0[_wgslsmith_index_u32(func_2(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, global2.x), countOneBits(vec3<i32>(u_input.a, u_input.a, 1i))), any(vec4<bool>(false, true, arg_2, arg_0.b.a))).a.b.x, 28u)], arg_0.d.d)));
    var var_1 = min(arg_0.d.b.xyx, ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1, arg_0.d.b.x, 15089u), vec3<u32>(global3[_wgslsmith_index_u32(68384u, 17u)], arg_1, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 17u)], 17u)]) | arg_0.d.b.xyw)));
    let var_2 = var_1.x << (~1u % 32u);
    var var_3 = Struct_2(func_2(_wgslsmith_sub_vec3_i32(-(vec3<i32>(global2.x, -41853i, -10170i) & vec3<i32>(14601i, u_input.a, 0i)), ~(~vec3<i32>(-1i, 2147483647i, 2147483647i))), !(-2147483647i != (global2.x | -2147483647i))).a.a, _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(var_2 << (arg_0.d.b.x % 32u), ~var_1.x, _wgslsmith_mult_u32(0u, 1u), ~arg_0.a.b.x)), vec4<u32>((var_2 ^ 79779u) >> (arg_0.d.b.x % 32u), 69099u, 4294967295u, ~firstLeadingBit(global3[_wgslsmith_index_u32(4294967295u, 17u)])), arg_0.d.b), !(!func_2(vec3<i32>(u_input.a, 15350i, 7118i), false).d.c), -326f);
    return func_2(firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(0i, -2147483647i, 0i), vec3<i32>(u_input.a, global2.x, 2147483647i) & -vec3<i32>(-33293i, 22447i, -2069i))), !func_2(select(max(vec3<i32>(7605i, -28184i, global2.x), vec3<i32>(-10818i, u_input.a, global2.x)), vec3<i32>(global2.x, -52447i, -2147483647i), arg_0.a.c), var_3.c.x).d.a.a).d.a;
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = arg_2.x;
    global4 = array<Struct_4, 20>();
    global3 = array<u32, 17>();
    let var_1 = Struct_4(arg_3);
    global1 = array<f32, 8>();
    return arg_2.wyy;
}

fn func_1() -> Struct_4 {
    let var_0 = vec2<bool>(true, all(func_5(!all(vec3<bool>(false, false, false)), global2.x, vec4<bool>(true, all(vec2<bool>(false, true)), true, true), func_4(func_2(vec3<i32>(42507i, u_input.a, 27241i), true), abs(4294967295u), true, _wgslsmith_f_op_f32(f32(-1f) * -806f)))));
    var var_1 = Struct_1(true);
    global4 = array<Struct_4, 20>();
    return global4[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_div_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 17u)], 17u)], 17u)] >> (7381u % 32u), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 17u)], 57445u), 17u)]), abs(~0u)), 17u)], 20u)];
}

fn func_6(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: Struct_1) -> u32 {
    let var_0 = -1i;
    global0 = array<f32, 28>();
    return 36440u << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~(~(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 17u)], 17u)], 17u)] ^ global3[_wgslsmith_index_u32(19369u, 17u)])), 17u)] << ((global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(102714u, 17u)] << (global3[_wgslsmith_index_u32(firstTrailingBit(1u), 17u)] % 32u), 17u)] | global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(0u, 17u)], 17u)]) % 32u), 17u)] % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(~(-12719i), 33567i) << (abs(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~7776u, 17u)], 17u)], 5333u)) % vec2<u32>(32u)), global2.xy);
    let var_1 = vec2<u32>(global3[_wgslsmith_index_u32(~1u, 17u)], func_6(func_1(), global2.xz, Struct_1(_wgslsmith_f_op_f32(1046f - -787f) == _wgslsmith_f_op_f32(step(1019f, -129f)))));
    let var_2 = 1f != _wgslsmith_f_op_f32(-953f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1705f - global0[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(24061u, 17u)], 17u)], 28u)])));
    var var_3 = ~(~vec3<i32>(0i, -16975i, min(u_input.a, u_input.a)) >> (vec3<u32>(var_1.x, ~var_1.x, _wgslsmith_add_u32(firstLeadingBit(var_1.x), 4294967295u)) % vec3<u32>(32u)));
    var var_4 = vec4<u32>(86519u, 0u, ~(~var_1.x), 4294967295u);
    var var_5 = vec3<i32>(abs(global2.x), ~var_3.x >> (~var_4.x % 32u), -2147483647i);
    var var_6 = Struct_2(func_4(Struct_3(func_2(select(vec3<i32>(global2.x, var_0.x, global2.x), vec3<i32>(-1i, var_0.x, 2147483647i), true), var_2).a, Struct_1(var_2), vec4<bool>(false, all(vec4<bool>(false, var_2, var_2, true)), false && var_2, false), func_2(_wgslsmith_add_vec3_i32(vec3<i32>(var_5.x, var_5.x, -10717i), vec3<i32>(var_0.x, var_3.x, 73044i)), !var_2).a, vec2<bool>(all(vec3<bool>(var_2, var_2, true)), var_2)), select(10641u, ~7535u, all(!vec4<bool>(var_2, false, false, var_2))), any(!(!vec3<bool>(var_2, var_2, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(431f + global1[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_4.x, 17u)], 17u)], 8u)]))), vec4<u32>(_wgslsmith_mod_u32(~var_4.x, 4294967295u), ~(var_1.x << (global3[_wgslsmith_index_u32(0u, 17u)] % 32u)), 10130u, _wgslsmith_mult_u32(~global3[_wgslsmith_index_u32(var_1.x, 17u)], var_1.x)) >> (_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(44748u, 17u)], 17u)], global3[_wgslsmith_index_u32(var_1.x, 17u)], var_1.x, 5440u), ~vec4<u32>(1u, var_1.x, 52513u, var_4.x)), ~(~vec4<u32>(var_1.x, var_1.x, global3[_wgslsmith_index_u32(var_1.x, 17u)], var_1.x))) % vec4<u32>(32u)), !vec3<bool>(true, func_4(Struct_3(Struct_2(Struct_1(var_2), vec4<u32>(0u, 12681u, 49455u, var_1.x), vec3<bool>(var_2, var_2, false), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 17u)], 17u)], 8u)]), Struct_1(var_2), vec4<bool>(false, var_2, var_2, var_2), Struct_2(Struct_1(var_2), vec4<u32>(var_1.x, var_1.x, var_4.x, 0u), vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(1u, 8u)]), vec2<bool>(true, true)), 20375u | global3[_wgslsmith_index_u32(80240u, 17u)], var_2, _wgslsmith_f_op_f32(select(-1762f, -448f, var_2))).a, var_2), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(48825u, var_1.x, 7361u, 55270u), vec4<u32>(4294967295u, 1u, 4294967295u, var_4.x)) ^ firstLeadingBit(vec4<u32>(19113u, var_1.x, global3[_wgslsmith_index_u32(4294967295u, 17u)], global3[_wgslsmith_index_u32(var_1.x, 17u)])), ~_wgslsmith_add_vec4_u32(vec4<u32>(7372u, 0u, 4294967295u, var_1.x), vec4<u32>(var_1.x, 1u, 1u, 7520u))), 8u)]));
    let var_7 = var_6.a;
    var var_8 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(var_1.x, 8u)])), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(89249u, 17u)], 8u)], false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1354f))), _wgslsmith_f_op_f32(max(var_6.d, -1180f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_6.d, var_6.d, 951f), vec3<f32>(var_6.d, global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(var_4.x, 8u)])))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(11691u, 17u)], 28u)], var_6.d, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_1.x, 17u)], 8u)]) * vec3<f32>(895f, var_6.d, global1[_wgslsmith_index_u32(var_1.x, 8u)])) + vec3<f32>(-1769f, global0[_wgslsmith_index_u32(var_1.x, 28u)], global1[_wgslsmith_index_u32(1u, 8u)])), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_6.d, 1040f, 1845f) * vec3<f32>(global0[_wgslsmith_index_u32(0u, 28u)], var_6.d, 556f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(152f, 1559f, -1127f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(495f + _wgslsmith_f_op_f32(-103f - -1816f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_6.d, -1949f) * -2289f), global1[_wgslsmith_index_u32(~(global3[_wgslsmith_index_u32(var_6.b.x, 17u)] ^ 0u), 8u)])));
}

