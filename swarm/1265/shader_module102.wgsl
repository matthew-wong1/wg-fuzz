struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(2147483647i, 0i, 1i, 3689i), vec2<i32>(13333i, -33041i));

var<private> global1: vec2<i32> = vec2<i32>(2757i, 583i);

var<private> global2: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false));

var<private> global3: array<i32, 26>;

var<private> global4: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(-1331f, 1746f), vec2<f32>(-1125f, -168f), vec2<f32>(1212f, 609f), vec2<f32>(-188f, 920f), vec2<f32>(-1124f, -1475f), vec2<f32>(-1303f, 459f), vec2<f32>(1287f, 1084f), vec2<f32>(340f, 1845f), vec2<f32>(630f, 1000f), vec2<f32>(-689f, 1566f), vec2<f32>(-133f, -854f), vec2<f32>(-138f, -818f));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    var var_0 = arg_1;
    global1 = _wgslsmith_add_vec2_i32(vec2<i32>(countOneBits(global1.x) << (_wgslsmith_div_u32(abs(106471u), abs(arg_1.c)) % 32u), -123i), ~vec2<i32>(_wgslsmith_dot_vec3_i32(arg_0.a.wxx >> (vec3<u32>(arg_1.c, 0u, var_0.c) % vec3<u32>(32u)), vec3<i32>(global0.a.x, -1i, -2147483647i)), _wgslsmith_add_i32(var_0.a.x, global3[_wgslsmith_index_u32(var_0.c, 26u)]) << (_wgslsmith_mod_u32(arg_1.c, var_0.c) % 32u)));
    global0 = Struct_2(arg_0.a, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x << (1u % 32u), u_input.b << (16446u % 32u)) << (max(vec2<u32>(36112u, 38501u) & vec2<u32>(arg_1.c, 4294967295u), vec2<u32>(arg_1.c, var_0.c) << (vec2<u32>(var_0.c, arg_1.c) % vec2<u32>(32u))) % vec2<u32>(32u)), arg_1.b.xy));
    var_0 = Struct_1(vec3<i32>(1i, arg_1.b.x, firstLeadingBit(~countOneBits(u_input.a.x))), vec4<i32>(~_wgslsmith_mult_i32(arg_1.a.x, _wgslsmith_sub_i32(arg_1.a.x, 1i)), 46385i, -firstTrailingBit(select(var_0.a.x, global0.b.x, true)), -global3[_wgslsmith_index_u32(min(1u, 4294967295u), 26u)] | arg_0.b.x), 35824u, arg_1.d);
    var var_1 = global2[_wgslsmith_index_u32(4294967295u, 32u)];
    return Struct_2(var_0.b, abs(_wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(1i, arg_0.b.x), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, u_input.b), global0.a.zz) & global0.a.ww)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: u32, arg_3: Struct_3) -> Struct_1 {
    global3 = array<i32, 26>();
    let var_0 = Struct_1(select(global0.a.xwx, vec3<i32>(u_input.b << (0u % 32u), _wgslsmith_add_i32(46860i, -81032i), 14754i) | ~min(arg_3.c.a.xzy, arg_3.c.a.zww), vec3<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false)), any(vec2<bool>(true, true)) && false, !all(vec3<bool>(false, false, false)))), -((-vec4<i32>(global0.b.x, -1i, u_input.b, global3[_wgslsmith_index_u32(53906u, 26u)]) ^ vec4<i32>(31422i, arg_3.c.a.x, -17188i, global1.x)) ^ global0.a), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(34992u, arg_2, arg_2), abs(vec3<u32>(1u, arg_2, arg_2))) & ~arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(abs(arg_0.x)))) * -1249f));
    let var_1 = var_0;
    let var_2 = ~var_0.c;
    global1 = ~(~_wgslsmith_clamp_vec2_i32(~firstTrailingBit(var_0.a.yz), ~(arg_3.a.a.yy & vec2<i32>(var_1.a.x, arg_3.c.b.x)), vec2<i32>(-31913i, ~(-35443i))));
    return Struct_1(~(~arg_3.a.a.yyx), var_1.b, ~max(0u, _wgslsmith_mod_u32(var_2, _wgslsmith_sub_u32(1u, var_2))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.d))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_2) -> i32 {
    global0 = arg_3;
    var var_0 = Struct_3(Struct_2(-countOneBits(vec4<i32>(u_input.b, arg_3.b.x, global0.a.x, 2147483647i)), vec2<i32>(func_2(func_2(arg_3, Struct_1(vec3<i32>(-18116i, 0i, 2147483647i), vec4<i32>(global3[_wgslsmith_index_u32(0u, 26u)], global1.x, u_input.a.x, 0i), arg_2.x, arg_1.d)), Struct_1(global0.a.xxx, arg_1.b, 27901u, 1024f)).a.x, func_3(vec3<f32>(arg_1.d, arg_1.d, -503f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.d, arg_1.d, arg_1.d, arg_1.d), vec4<f32>(-407f, -478f, -1485f, arg_1.d), true)), arg_2.x, Struct_3(arg_3, -15698i, arg_3)).b.x)), -_wgslsmith_mult_i32((global1.x | 2147483647i) << (~8303u % 32u), 23041i), Struct_2(arg_1.b, ~u_input.a));
    var var_1 = 1u;
    var_0 = Struct_3(Struct_2(-firstTrailingBit(vec4<i32>(-11244i, 0i, 9092i, global3[_wgslsmith_index_u32(arg_1.c, 26u)])), vec2<i32>(global3[_wgslsmith_index_u32(arg_2.x ^ (arg_1.c >> (55749u % 32u)), 26u)], u_input.b)), _wgslsmith_mult_i32(func_2(var_0.c, arg_1).b.x, ~(-53377i)), arg_3);
    let var_2 = -func_2(arg_3, Struct_1(countOneBits(~var_0.c.a.yyw), -(~var_0.a.a), ~55220u, -700f)).a;
    return arg_0;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: f32, arg_3: f32) -> Struct_2 {
    var var_0 = Struct_2(arg_1, firstTrailingBit(vec2<i32>(~global3[_wgslsmith_index_u32(13998u, 26u)] >> (~4294967295u % 32u), global3[_wgslsmith_index_u32(1u, 26u)])));
    let var_1 = vec4<i32>(arg_1.x, abs(~reverseBits(_wgslsmith_mult_i32(u_input.a.x, global3[_wgslsmith_index_u32(67247u, 26u)]))), abs(~global3[_wgslsmith_index_u32(1u << (_wgslsmith_clamp_u32(1u, 11975u, 1u) % 32u), 26u)]), func_4(_wgslsmith_add_i32(2147483647i, arg_1.x << (~0u % 32u)), func_3(arg_0.ywz, vec4<f32>(arg_2, _wgslsmith_f_op_f32(arg_0.x - arg_3), arg_3, arg_2), ~39302u, Struct_3(Struct_2(vec4<i32>(-14460i, global1.x, var_0.b.x, u_input.b), arg_1.zx), arg_1.x, func_2(Struct_2(global0.a, u_input.a), Struct_1(var_0.a.zyy, var_0.a, 1u, -1000f)))), vec4<u32>(min(25476u, _wgslsmith_dot_vec2_u32(vec2<u32>(15237u, 12150u), vec2<u32>(4294967295u, 14590u))), 6140u, 5141u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))), Struct_2(vec4<i32>(_wgslsmith_mod_i32(-49232i, 16815i), -1i, 1i, -2147483647i), func_2(Struct_2(arg_1, vec2<i32>(2147483647i, 2147483647i)), Struct_1(vec3<i32>(9429i, -2147483647i, u_input.a.x), global0.a, 56292u, arg_2)).b)));
    let var_2 = func_3(vec3<f32>(arg_2, _wgslsmith_f_op_f32(arg_2 + arg_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_2, arg_0.x, arg_3))))), _wgslsmith_div_u32(1u, func_3(_wgslsmith_f_op_vec3_f32(-arg_0.yyw), _wgslsmith_f_op_vec4_f32(-arg_0), ~0u, Struct_3(Struct_2(var_1, vec2<i32>(1i, 17570i)), var_0.a.x, Struct_2(vec4<i32>(global1.x, arg_1.x, global1.x, global0.b.x), arg_1.zw))).c) & ~_wgslsmith_add_u32(1u, 1u), Struct_3(func_2(func_2(Struct_2(vec4<i32>(-10293i, -8848i, global1.x, global0.a.x), vec2<i32>(9773i, -1i)), Struct_1(var_1.xyz, var_1, 1u, -1801f)), func_3(vec3<f32>(arg_3, arg_0.x, arg_2), vec4<f32>(1253f, 656f, arg_2, -2071f), 126375u, Struct_3(Struct_2(vec4<i32>(var_1.x, global0.b.x, arg_1.x, 1i), var_0.b), u_input.b, Struct_2(var_1, u_input.a)))), arg_1.x, func_2(Struct_2(~vec4<i32>(arg_1.x, 30072i, 48413i, 1i), ~u_input.a), Struct_1(-vec3<i32>(-5577i, global1.x, u_input.a.x), func_2(Struct_2(var_1, global0.b), Struct_1(global0.a.www, vec4<i32>(43028i, var_1.x, -2147483647i, var_1.x), 40154u, 1520f)).a, 1u, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_3 = arg_0;
    global4 = array<vec2<f32>, 12>();
    return func_2(Struct_2(min(arg_1, vec4<i32>(global3[_wgslsmith_index_u32(var_2.c, 26u)], var_1.x, u_input.a.x, 6417i) << (vec4<u32>(var_2.c, var_2.c, var_2.c, 18317u) % vec4<u32>(32u))) | (~arg_1 & arg_1), var_2.a.yz), Struct_1(~vec3<i32>(-1i, func_2(Struct_2(vec4<i32>(-27891i, global1.x, global1.x, 0i), vec2<i32>(-26526i, 3440i)), Struct_1(var_0.a.yxw, var_1, 17092u, -439f)).a.x, -46094i), ~_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, global1.x, 1i, 26413i), vec4<i32>(var_1.x, global0.b.x, -9522i, -10837i)) >> (vec4<u32>(~13174u, firstTrailingBit(var_2.c), min(var_2.c, 4294967295u), 4294967295u) % vec4<u32>(32u)), var_2.c, var_3.x));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3) -> u32 {
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(arg_0.d, -800f)), _wgslsmith_f_op_f32(-128f + arg_0.d), _wgslsmith_f_op_f32(f32(-1f) * -105f), -1741f))), ~func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1837f, -843f, arg_0.d)), vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.d)), arg_0.d, func_3(vec3<f32>(-173f, arg_0.d, 641f), vec4<f32>(arg_0.d, -124f, arg_0.d, arg_0.d), 32384u, Struct_3(arg_1.c, arg_0.b.x, Struct_2(global0.a, vec2<i32>(arg_1.a.b.x, 25902i)))).d, _wgslsmith_f_op_f32(arg_0.d * arg_0.d)), 4294967295u, Struct_3(func_2(arg_1.a, Struct_1(vec3<i32>(arg_1.a.b.x, -2147483647i, 17418i), vec4<i32>(arg_1.c.a.x, 23454i, global3[_wgslsmith_index_u32(arg_0.c, 26u)], global0.a.x), 4294967295u, arg_0.d)), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.c, arg_0.c), 26u)], Struct_2(global0.a, vec2<i32>(-48090i, 39797i)))).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), 1127f);
    global0 = Struct_2(vec4<i32>(global0.a.x, ~arg_0.b.x, _wgslsmith_add_i32(~global1.x, ~1i ^ -u_input.b), firstTrailingBit(~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c.b.x, arg_0.b.x), arg_0.b.wz))), func_1(vec4<f32>(-251f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.d - 2252f), _wgslsmith_f_op_f32(arg_0.d * arg_0.d))), arg_0.d, 486f), -countOneBits(var_0.a << (vec4<u32>(1u, arg_0.c, 18398u, arg_0.c) % vec4<u32>(32u))), arg_0.d, -333f).b);
    let var_1 = arg_1;
    let var_2 = var_1.c;
    let var_3 = arg_0;
    return select(~arg_0.c, _wgslsmith_mult_u32(var_3.c, 147736u), reverseBits(_wgslsmith_add_i32(~global3[_wgslsmith_index_u32(arg_0.c, 26u)], var_2.b.x)) == -17703i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(~4294967295u, _wgslsmith_mult_u32(func_5(Struct_1(firstTrailingBit(global0.a.wxy), vec4<i32>(44295i, u_input.a.x, u_input.a.x, global0.b.x), 0u, _wgslsmith_f_op_f32(1692f + -954f)), Struct_3(Struct_2(vec4<i32>(-17170i, 0i, 0i, -5721i), vec2<i32>(global3[_wgslsmith_index_u32(1132u, 26u)], global0.a.x)), _wgslsmith_clamp_i32(global1.x, -1i, 0i), func_1(vec4<f32>(1054f, -544f, -149f, 479f), vec4<i32>(1i, global3[_wgslsmith_index_u32(1u, 26u)], -19981i, u_input.b), -466f, 1217f))), ~(~func_3(vec3<f32>(490f, 996f, -1000f), vec4<f32>(901f, 650f, -272f, 217f), 4294967295u, Struct_3(Struct_2(global0.a, u_input.a), global3[_wgslsmith_index_u32(20794u, 26u)], Struct_2(vec4<i32>(global3[_wgslsmith_index_u32(1u, 26u)], 1i, 22427i, global1.x), vec2<i32>(-17168i, global0.a.x)))).c)));
    var_0 = _wgslsmith_mult_u32(~(~0u), _wgslsmith_dot_vec3_u32(min(~vec3<u32>(1u, 1u, 1u), _wgslsmith_mod_vec3_u32(~vec3<u32>(26742u, 4294967295u, 43181u), vec3<u32>(1u, 2682u, 4294967295u))), vec3<u32>(1u, 1u, 1u)));
    let var_1 = func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-535f, 1000f)), -520f, 1486f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))))), _wgslsmith_div_vec4_i32(abs(~(~vec4<i32>(37088i, global0.a.x, 1i, 2147483647i))), vec4<i32>(9583i, global1.x, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, ~0u, ~0u), 26u)], -func_4(global0.b.x, Struct_1(vec3<i32>(-7515i, u_input.a.x, global1.x), vec4<i32>(global3[_wgslsmith_index_u32(81008u, 26u)], global3[_wgslsmith_index_u32(4294967295u, 26u)], global1.x, 32602i), 87213u, 1000f), vec4<u32>(16249u, 4294967295u, 0u, 25330u), Struct_2(global0.a, u_input.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(125f - 652f), -500f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-462f - 925f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1076f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -472f), 428f))));
    global0 = func_2(Struct_2(abs(max(var_1.a, var_1.a)) & var_1.a, vec2<i32>(~2147483647i, ~(~1i))), Struct_1(-abs(global0.a.ywx), ~vec4<i32>(4837i, var_1.b.x & 0i, -6731i, -7881i), abs(~0u), _wgslsmith_f_op_f32(f32(-1f) * -2081f)));
    let var_2 = func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(455f, -1570f, -2021f) + vec3<f32>(-171f, -154f, -1188f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(635f, 491f, -1033f))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1418f, 1593f, -125f), vec3<f32>(695f, -1337f, 1964f), false))))) * vec3<f32>(_wgslsmith_f_op_f32(-328f * 1426f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1898f, 839f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1067f, -1000f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(109f, -821f, true)), _wgslsmith_f_op_f32(abs(431f)), -1561f, 289f)) - vec4<f32>(_wgslsmith_f_op_f32(-func_3(vec3<f32>(-1417f, -743f, -577f), vec4<f32>(-1052f, 537f, -302f, 1294f), 0u, Struct_3(var_1, 2147483647i, Struct_2(vec4<i32>(var_1.a.x, 0i, global3[_wgslsmith_index_u32(31605u, 26u)], 0i), var_1.a.wz))).d), 1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(840f * -832f), -2002f)), 560f)), 1u, Struct_3(var_1, ~(-countOneBits(u_input.b)), func_2(var_1, Struct_1(_wgslsmith_mult_vec3_i32(var_1.a.zxx, vec3<i32>(-2147483647i, -20657i, 58731i)), _wgslsmith_add_vec4_i32(var_1.a, global0.a), ~0u, func_3(vec3<f32>(-1603f, -1112f, -520f), vec4<f32>(-414f, 616f, 500f, -345f), 60267u, Struct_3(Struct_2(vec4<i32>(u_input.a.x, var_1.b.x, var_1.a.x, global3[_wgslsmith_index_u32(0u, 26u)]), vec2<i32>(u_input.b, global1.x)), var_1.b.x, var_1)).d))));
    global1 = -_wgslsmith_sub_vec2_i32(~countOneBits(firstTrailingBit(global0.a.zy)), func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.d, 1549f, var_2.d, var_2.d))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 1000f, var_2.d, var_2.d), vec4<f32>(-1104f, -880f, -502f, var_2.d), true))), _wgslsmith_div_vec4_i32(countOneBits(global0.a), vec4<i32>(u_input.b, global1.x, u_input.b, global3[_wgslsmith_index_u32(4294967295u, 26u)])), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.d + 775f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d))).a.yw);
    global3 = array<i32, 26>();
    let x = u_input.a;
    s_output = StorageBuffer((~vec2<u32>(var_2.c, var_2.c) & min(vec2<u32>(var_2.c, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, var_2.c), vec2<u32>(4294967295u, var_2.c)))) << (_wgslsmith_add_vec2_u32(~vec2<u32>(var_2.c, var_2.c) << ((vec2<u32>(var_2.c, var_2.c) << (vec2<u32>(var_2.c, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)), reverseBits(vec2<u32>(var_2.c, 22733u))) % vec2<u32>(32u)), -787f, 2227f);
}

