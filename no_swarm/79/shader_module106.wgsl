struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(30751i, 1i, -7865i, 43278i), vec4<i32>(1i, 5527i, 19783i, 2147483647i), vec4<i32>(2147483647i, i32(-2147483648), -16395i, 28907i), vec4<i32>(-30389i, 35682i, 1i, 2147483647i), vec4<i32>(2924i, i32(-2147483648), 2147483647i, -9164i), vec4<i32>(17754i, -1i, 10094i, 1i), vec4<i32>(-8644i, i32(-2147483648), i32(-2147483648), 2147483647i), vec4<i32>(-11505i, -9350i, 0i, -24603i), vec4<i32>(-33250i, 79697i, -73871i, 371i), vec4<i32>(i32(-2147483648), -3684i, 1i, i32(-2147483648)), vec4<i32>(-374i, 26086i, 1553i, -1i), vec4<i32>(i32(-2147483648), 6117i, -45439i, 29869i), vec4<i32>(30092i, i32(-2147483648), -27238i, -30547i), vec4<i32>(1i, i32(-2147483648), 12335i, -55153i), vec4<i32>(-1i, 2147483647i, -5855i, i32(-2147483648)), vec4<i32>(i32(-2147483648), i32(-2147483648), -29713i, -9523i), vec4<i32>(-1i, 0i, -26179i, -41007i), vec4<i32>(-23902i, 8145i, 24570i, -74781i), vec4<i32>(7134i, 15951i, i32(-2147483648), i32(-2147483648)), vec4<i32>(34061i, -3304i, 0i, 25279i));

var<private> global2: array<Struct_3, 5>;

var<private> global3: array<Struct_3, 23>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: i32) -> i32 {
    global1 = array<vec4<i32>, 20>();
    return 2147483647i;
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    global3 = array<Struct_3, 23>();
    global0 = Struct_1(vec2<bool>(global0.a.x, !(!global0.b.x && global0.a.x)), vec4<bool>((false | global0.b.x) && select(false, true, any(vec3<bool>(global0.b.x, true, false))), global0.b.x, false, select(any(select(global0.b.xyx, vec3<bool>(false, global0.b.x, true), true)), all(!global0.b.wy), true)), vec4<i32>(-1i) * -(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.c.x, arg_0.x, -1i, u_input.c.x), u_input.d) | vec4<i32>(2147483647i, -17462i, 14315i, 0i)));
    global0 = Struct_1(select(!(!vec2<bool>(global0.b.x, global0.b.x)), select(global0.b.xz, !global0.b.zw, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, 42087u, u_input.b), vec4<u32>(u_input.b, 24487u, 1u, 1u)) < u_input.b), vec2<bool>(all(select(global0.b.xz, vec2<bool>(global0.b.x, global0.a.x), global0.b.wz)), func_3(vec2<u32>(61987u, u_input.b), Struct_1(global0.a, global0.b, vec4<i32>(-1i, 41016i, arg_0.x, 804i)), vec2<u32>(22806u, u_input.b), u_input.a.x) < u_input.d.x)), !global0.b, vec4<i32>(0i, global0.c.x, -(~u_input.d.x), (global0.c.x & -719i) >> (u_input.b % 32u)));
    let var_0 = Struct_3(Struct_1(global0.a, global0.b, vec4<i32>(global0.c.x, -1i, -u_input.d.x, -2237i)), -1224f, _wgslsmith_mult_vec3_u32(max(~vec3<u32>(u_input.b, u_input.b, 1u), ~abs(vec3<u32>(u_input.b, u_input.b, u_input.b))), ~abs(vec3<u32>(31649u, 32033u, u_input.b))));
    global1 = array<vec4<i32>, 20>();
    return Struct_2(Struct_1(select(!vec2<bool>(var_0.a.b.x, var_0.a.b.x), vec2<bool>(true, true), vec2<bool>(global0.a.x, true)), vec4<bool>(!(-1844f <= var_0.b), false, !global0.a.x, global0.a.x), -vec4<i32>(-1i << (var_0.c.x % 32u), func_3(var_0.c.yz, var_0.a, var_0.c.zx, -1i), ~2147483647i, global0.c.x)), vec3<i32>(i32(-1i) * -_wgslsmith_div_i32(23896i, 32100i), ~(-min(-38022i, 0i)), i32(-1i) * -1i), all(global0.a), 154f, var_0.a);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = select(-u_input.c, ~(~(vec2<i32>(-1i) * -vec2<i32>(-28628i, u_input.a.x))), arg_0.a.a.x);
    global0 = func_2(global0.c.zwz).a;
    var var_1 = _wgslsmith_mod_vec3_i32(~(-(arg_0.e.c.zyw & u_input.a) | (_wgslsmith_mult_vec3_i32(global0.c.yzz, vec3<i32>(-16507i, global0.c.x, -3943i)) & arg_0.a.c.yzy)), _wgslsmith_mult_vec3_i32(countOneBits(reverseBits(vec3<i32>(var_0.x, global0.c.x, arg_0.b.x)) ^ _wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(2147483647i, 9953i, -8432i))), _wgslsmith_add_vec3_i32(arg_0.a.c.xzx, min(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, 0i, var_0.x), vec3<i32>(global0.c.x, global0.c.x, var_0.x), u_input.a), vec3<i32>(global0.c.x, arg_0.e.c.x, arg_0.e.c.x)))));
    global0 = arg_0.e;
    var var_2 = 1u;
    return func_2(vec3<i32>(~global0.c.x, ~(-countOneBits(arg_0.a.c.x)), func_3(select(vec2<u32>(7542u, 1u), abs(vec2<u32>(u_input.b, 0u)), true), func_2(global0.c.xyx >> (vec3<u32>(u_input.b, 4294967295u, 33179u) % vec3<u32>(32u))).e, ~vec2<u32>(u_input.b, u_input.b) & min(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 0u)), -61657i)));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(arg_0.e, ~(global0.c.xxx & func_4(arg_0, u_input.b < u_input.b, select(vec2<bool>(global0.b.x, global0.a.x), global0.a, true)).a.c.yyw), true, arg_0.d, Struct_1(vec2<bool>(true, arg_0.c), vec4<bool>(arg_0.b.x < -u_input.d.x, global0.a.x, false, true), global0.c));
    global1 = array<vec4<i32>, 20>();
    let var_1 = func_4(Struct_2(var_0.a, ~var_0.b, select(!select(arg_0.e.a.x, var_0.a.b.x, false), global0.b.x, true), -441f, Struct_1(vec2<bool>(true, true), vec4<bool>(var_0.c, global0.a.x, true, false), vec4<i32>(i32(-1i) * -11388i, global0.c.x, max(u_input.d.x, -20438i), select(global0.c.x, var_0.b.x, global0.a.x)))), global0.a.x, !global0.a);
    global1 = array<vec4<i32>, 20>();
    var var_2 = u_input.b;
    return arg_0.e;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec4<i32>) -> Struct_1 {
    global2 = array<Struct_3, 5>();
    var var_0 = u_input.b ^ ~u_input.b;
    var var_1 = u_input.b;
    global1 = array<vec4<i32>, 20>();
    var var_2 = u_input.b;
    return func_5(func_4(func_2(vec3<i32>(arg_2.x, -2031i << (u_input.b % 32u), global0.c.x)), true || all(vec2<bool>(arg_0, true)), vec2<bool>(!global0.a.x, arg_0)));
}

fn func_6(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_3) -> vec4<i32> {
    var var_0 = Struct_1(func_5(func_4(func_4(func_2(vec3<i32>(17461i, 1i, u_input.c.x)), global0.b.x, func_4(Struct_2(Struct_1(arg_2.b.xw, global0.b, arg_3.a.c), arg_2.c.ywx, true, arg_3.b, Struct_1(vec2<bool>(global0.a.x, true), vec4<bool>(arg_2.b.x, global0.b.x, true, true), global0.c)), true, arg_2.b.zx).a.a), any(vec3<bool>(global0.b.x, true, arg_2.b.x)), vec2<bool>(true, arg_2.b.x))).b.wz, select(vec4<bool>(arg_2.a.x, false, all(arg_2.b.wzx), arg_2.a.x), func_1(arg_3.a.a.x, func_1(false, true, ~vec4<i32>(1982i, 0i, arg_2.c.x, -52914i)).a.x, vec4<i32>(global0.c.x ^ -45810i, countOneBits(0i), -1i, arg_0)).b, global0.a.x), vec4<i32>(-1i) * -arg_3.a.c);
    let var_1 = (u_input.b >> (firstTrailingBit(~arg_1.x) % 32u)) ^ ~(~arg_1.x);
    var var_2 = func_2(_wgslsmith_sub_vec3_i32(~_wgslsmith_add_vec3_i32(var_0.c.yxw, vec3<i32>(global0.c.x, 53720i, 0i)), abs(vec3<i32>(~(-11616i), max(u_input.c.x, var_0.c.x), min(arg_2.c.x, 0i)))));
    let var_3 = 12119i;
    let var_4 = func_4(Struct_2(arg_2, firstTrailingBit(-var_0.c.xzy & func_1(true, true, vec4<i32>(global0.c.x, -1i, arg_0, var_2.a.c.x)).c.zyy), false, 1f, Struct_1(!vec2<bool>(true, arg_2.b.x), arg_2.b, firstLeadingBit(global0.c))), true, !select(!func_5(Struct_2(arg_3.a, arg_3.a.c.xyw, true, -863f, arg_3.a)).a, !(!var_2.e.a), vec2<bool>(-38882i == var_3, !arg_2.b.x)));
    return _wgslsmith_sub_vec4_i32(arg_3.a.c, max(_wgslsmith_div_vec4_i32(arg_2.c, _wgslsmith_clamp_vec4_i32(vec4<i32>(40395i, -89051i, arg_0, arg_0) & vec4<i32>(-8368i, arg_2.c.x, 0i, 32389i), u_input.d, global0.c)), firstTrailingBit(vec4<i32>(var_4.b.x, -var_4.e.c.x, var_2.a.c.x, -11212i))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_3, 23>();
    let var_0 = Struct_1(vec2<bool>(true, true), select(global0.b, vec4<bool>(false, global0.b.x, false, true), !(~23542u <= (u_input.b | u_input.b))), min(global0.c, func_6(~global0.c.x, ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b)), func_1(!global0.b.x, false, -global1[_wgslsmith_index_u32(u_input.b, 20u)]), Struct_3(Struct_1(global0.b.yy, vec4<bool>(global0.a.x, true, true, global0.a.x), vec4<i32>(-30479i, u_input.a.x, global0.c.x, global0.c.x)), func_2(vec3<i32>(u_input.d.x, global0.c.x, 2147483647i)).d, vec3<u32>(1u, 4294967295u, 105200u)))));
    global1 = array<vec4<i32>, 20>();
    let var_1 = u_input.d.x;
    var var_2 = Struct_3(Struct_1(!func_1(any(var_0.b.yzz), global0.b.x, vec4<i32>(u_input.d.x, u_input.c.x, var_0.c.x, 50710i)).b.yz, vec4<bool>(var_0.b.x, true, !global0.b.x, !var_0.a.x), vec4<i32>(func_2(global0.c.zwy).e.c.x, 2147483647i, _wgslsmith_dot_vec3_i32(select(global0.c.zwx, vec3<i32>(50239i, 1i, global0.c.x), var_0.b.x), var_0.c.yyw), _wgslsmith_div_i32(func_3(vec2<u32>(4294967295u, 6388u), Struct_1(vec2<bool>(var_0.a.x, global0.b.x), vec4<bool>(true, false, var_0.a.x, true), vec4<i32>(1i, var_0.c.x, u_input.d.x, 1i)), vec2<u32>(67168u, u_input.b), u_input.a.x), _wgslsmith_mod_i32(var_1, u_input.d.x)))), _wgslsmith_f_op_f32(trunc(655f)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(firstTrailingBit(u_input.b), ~u_input.b, ~u_input.b), vec3<u32>(69890u, u_input.b, u_input.b), ~vec3<u32>(u_input.b, 44198u, 41462u)));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_f_op_f32(535f + _wgslsmith_div_f32(-823f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_2.b, var_2.b)))))), var_2.c.x, -global0.c.yz, ~4294967295u);
}

