struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 1>;

var<private> global1: u32;

var<private> global2: i32 = 2147483647i;

var<private> global3: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(Struct_1(vec2<bool>(true, true), 38850u, vec4<i32>(0i, 45920i, 0i, 11785i), vec3<i32>(-1i, -6536i, 10346i))), Struct_3(Struct_1(vec2<bool>(false, true), 24124u, vec4<i32>(-1i, 1i, -4153i, -2494i), vec3<i32>(-1i, -1i, -29704i))), Struct_3(Struct_1(vec2<bool>(false, true), 1u, vec4<i32>(-45440i, 190i, i32(-2147483648), 24851i), vec3<i32>(-707i, -27117i, -1i))), Struct_3(Struct_1(vec2<bool>(true, false), 4294967295u, vec4<i32>(-39175i, 836i, 2147483647i, 2147483647i), vec3<i32>(-12454i, -1i, -1i))), Struct_3(Struct_1(vec2<bool>(false, false), 9409u, vec4<i32>(-10653i, -57556i, 0i, i32(-2147483648)), vec3<i32>(-19757i, 4355i, i32(-2147483648)))), Struct_3(Struct_1(vec2<bool>(true, false), 0u, vec4<i32>(-1i, 9065i, 0i, 2147483647i), vec3<i32>(23820i, 2147483647i, -9793i))), Struct_3(Struct_1(vec2<bool>(false, true), 98901u, vec4<i32>(0i, -25508i, -24580i, 61652i), vec3<i32>(-2811i, -13995i, -29256i))), Struct_3(Struct_1(vec2<bool>(true, true), 0u, vec4<i32>(0i, 2147483647i, -17034i, i32(-2147483648)), vec3<i32>(-10360i, 11234i, 2147483647i))), Struct_3(Struct_1(vec2<bool>(true, true), 0u, vec4<i32>(-5905i, i32(-2147483648), -32655i, 2147483647i), vec3<i32>(34759i, 41681i, 2147483647i))), Struct_3(Struct_1(vec2<bool>(true, true), 4294967295u, vec4<i32>(0i, -1i, 2147483647i, 1i), vec3<i32>(0i, -1i, 27731i))), Struct_3(Struct_1(vec2<bool>(false, true), 38697u, vec4<i32>(-1i, 8056i, -4645i, 0i), vec3<i32>(2147483647i, -1i, 50202i))), Struct_3(Struct_1(vec2<bool>(false, true), 2757u, vec4<i32>(-1i, 0i, 1i, i32(-2147483648)), vec3<i32>(-4740i, 17583i, 68314i))), Struct_3(Struct_1(vec2<bool>(false, false), 18814u, vec4<i32>(i32(-2147483648), 1i, -53223i, 2147483647i), vec3<i32>(16528i, 2147483647i, 2147483647i))), Struct_3(Struct_1(vec2<bool>(false, true), 6807u, vec4<i32>(i32(-2147483648), -34433i, 2147483647i, 2147483647i), vec3<i32>(-7458i, 8126i, 90447i))), Struct_3(Struct_1(vec2<bool>(false, true), 4294967295u, vec4<i32>(1i, -1i, -1i, 33018i), vec3<i32>(-1i, 0i, 1i))), Struct_3(Struct_1(vec2<bool>(false, false), 6925u, vec4<i32>(2147483647i, 27675i, 2147483647i, -23686i), vec3<i32>(-1i, i32(-2147483648), 16024i))), Struct_3(Struct_1(vec2<bool>(false, true), 0u, vec4<i32>(0i, -8285i, 1i, 3374i), vec3<i32>(5630i, 26041i, 2147483647i))), Struct_3(Struct_1(vec2<bool>(true, true), 40904u, vec4<i32>(-29189i, 1i, 2147483647i, -65153i), vec3<i32>(0i, 18656i, 1i))), Struct_3(Struct_1(vec2<bool>(true, false), 80683u, vec4<i32>(3445i, 13721i, 6784i, 0i), vec3<i32>(18100i, 5329i, 0i))), Struct_3(Struct_1(vec2<bool>(true, true), 27971u, vec4<i32>(-688i, 578i, -26104i, 18040i), vec3<i32>(i32(-2147483648), 1i, 65027i))), Struct_3(Struct_1(vec2<bool>(false, true), 15898u, vec4<i32>(i32(-2147483648), i32(-2147483648), -21712i, 29661i), vec3<i32>(19301i, -45283i, -3303i))), Struct_3(Struct_1(vec2<bool>(false, false), 34410u, vec4<i32>(-57454i, 1i, 16588i, 53183i), vec3<i32>(2147483647i, 26147i, i32(-2147483648)))), Struct_3(Struct_1(vec2<bool>(true, false), 1u, vec4<i32>(0i, i32(-2147483648), 0i, 2147483647i), vec3<i32>(1i, 0i, -34508i))), Struct_3(Struct_1(vec2<bool>(false, true), 1u, vec4<i32>(i32(-2147483648), 1i, -17287i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 37044i, i32(-2147483648)))), Struct_3(Struct_1(vec2<bool>(true, true), 43751u, vec4<i32>(22960i, -33123i, -1i, 44419i), vec3<i32>(-63844i, -96i, -1i))), Struct_3(Struct_1(vec2<bool>(false, true), 1u, vec4<i32>(1i, 0i, 48348i, 38054i), vec3<i32>(-39555i, 0i, 2147483647i))), Struct_3(Struct_1(vec2<bool>(true, false), 38761u, vec4<i32>(2147483647i, 24646i, -10584i, 51970i), vec3<i32>(2147483647i, -23761i, 2147483647i))), Struct_3(Struct_1(vec2<bool>(true, false), 101061u, vec4<i32>(-19755i, 2147483647i, 0i, 14657i), vec3<i32>(i32(-2147483648), 31077i, -34213i))), Struct_3(Struct_1(vec2<bool>(false, true), 81208u, vec4<i32>(2147483647i, 1i, i32(-2147483648), 1i), vec3<i32>(-13170i, 2147483647i, i32(-2147483648)))), Struct_3(Struct_1(vec2<bool>(true, false), 4294967295u, vec4<i32>(56355i, 0i, 16698i, 12388i), vec3<i32>(1i, 2147483647i, -1i))));

var<private> global4: array<bool, 14>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32) -> vec2<bool> {
    var var_0 = ~_wgslsmith_clamp_vec4_u32(~(~global0[_wgslsmith_index_u32(firstLeadingBit(arg_0), 1u)]), ((global0[_wgslsmith_index_u32(15611u, 1u)] ^ global0[_wgslsmith_index_u32(u_input.b, 1u)]) ^ firstLeadingBit(vec4<u32>(u_input.b, 57064u, 1u, 72480u))) >> (vec4<u32>(_wgslsmith_sub_u32(arg_0, arg_0), 1u, arg_0, _wgslsmith_mod_u32(u_input.b, arg_0)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 17111u), vec2<u32>(0u, 0u)), u_input.b, max(0u, arg_0), 0u), abs(_wgslsmith_sub_vec4_u32(global0[_wgslsmith_index_u32(arg_0, 1u)], vec4<u32>(26571u, arg_0, 9703u, 3973u)))));
    let var_1 = abs(~vec4<u32>(arg_0, u_input.b, u_input.b, 17523u));
    var_0 = vec4<u32>(_wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_add_u32(u_input.b, 0u)), 1u), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 0u, u_input.b), var_0.zxz) << ((arg_0 << (var_1.x % 32u)) % 32u)) & arg_0, 40960u, _wgslsmith_dot_vec3_u32(var_1.yxy, ~vec3<u32>(~0u, ~4294967295u, 24808u)));
    return vec2<bool>(false, any(!select(select(vec3<bool>(global4[_wgslsmith_index_u32(var_0.x, 14u)], true, global4[_wgslsmith_index_u32(var_1.x, 14u)]), vec3<bool>(global4[_wgslsmith_index_u32(0u, 14u)], true, false), vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.b, 14u)], false)), !vec3<bool>(global4[_wgslsmith_index_u32(u_input.b, 14u)], false, global4[_wgslsmith_index_u32(19893u, 14u)]), vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 14u)], global4[_wgslsmith_index_u32(arg_0, 14u)], global4[_wgslsmith_index_u32(arg_0, 14u)]))));
}

fn func_2(arg_0: bool, arg_1: vec3<bool>) -> vec3<i32> {
    global1 = ~(~(~46103u));
    let var_0 = Struct_2(min(firstTrailingBit(~vec2<i32>(14337i, u_input.a)), vec2<i32>(u_input.a, -_wgslsmith_mod_i32(u_input.a, u_input.a))), vec4<u32>(u_input.b, ~1u, _wgslsmith_add_u32(u_input.b, ~min(u_input.b, 1u)), min(1u, 17916u)), !arg_1.yy, !func_3(u_input.b));
    global0 = array<vec4<u32>, 1>();
    let var_1 = Struct_3(Struct_1(var_0.c, _wgslsmith_div_u32(min(_wgslsmith_mod_u32(var_0.b.x, u_input.b), ~u_input.b), (var_0.b.x >> (0u % 32u)) >> (max(32133u, var_0.b.x) % 32u)), ~_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(-1i, 28071i, -19049i, u_input.a)), min(vec4<i32>(var_0.a.x, -19926i, var_0.a.x, u_input.a), vec4<i32>(886i, var_0.a.x, u_input.a, u_input.a))), select(vec3<i32>(-5422i, var_0.a.x & -1i, -var_0.a.x), vec3<i32>(u_input.a, 0i, 41405i) & select(vec3<i32>(34726i, u_input.a, -14331i), vec3<i32>(41371i, 1i, 0i), vec3<bool>(true, true, true)), true)));
    global4 = array<bool, 14>();
    return firstLeadingBit(vec3<i32>(i32(-1i) * -2147483647i, firstTrailingBit(_wgslsmith_add_i32(u_input.a, -2147483647i)), ~_wgslsmith_add_i32(u_input.a, 16219i))) << (vec3<u32>(var_0.b.x, ~(~1u), ~_wgslsmith_dot_vec2_u32(firstLeadingBit(var_0.b.xz), _wgslsmith_div_vec2_u32(var_0.b.wy, vec2<u32>(u_input.b, 0u)))) % vec3<u32>(32u));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: i32) -> Struct_4 {
    global4 = array<bool, 14>();
    let var_0 = Struct_1(!arg_2.a.a, ~arg_0.b, -vec4<i32>(_wgslsmith_div_i32(func_2(arg_2.a.a.x, vec3<bool>(global4[_wgslsmith_index_u32(17594u, 14u)], true, arg_2.a.a.x)).x, _wgslsmith_mult_i32(arg_3, arg_2.a.c.x)), _wgslsmith_mult_i32(-arg_0.d.x, 0i), u_input.a, min(arg_2.a.d.x, 0i)), -(~arg_2.a.c.wzy));
    var var_1 = max(vec3<i32>(_wgslsmith_mult_i32(~(-1i), -48535i), 1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_0.c.x, arg_2.a.c.x), vec3<i32>(-15813i, 58004i, arg_0.c.x))) | vec3<i32>(u_input.a, -1i, arg_3 & 1i), arg_1.xxy);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f))));
    var_1 = firstTrailingBit(_wgslsmith_clamp_vec3_i32(~_wgslsmith_clamp_vec3_i32(var_0.d, vec3<i32>(arg_1.x, u_input.a, u_input.a), vec3<i32>(var_0.d.x, 1i, arg_2.a.d.x)) << (reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.b), vec3<u32>(1u, 31417u, 0u))) % vec3<u32>(32u)), select(arg_0.c.ywx, _wgslsmith_clamp_vec3_i32(-vec3<i32>(arg_1.x, arg_2.a.c.x, arg_2.a.d.x), vec3<i32>(var_1.x, arg_1.x, arg_1.x) | vec3<i32>(arg_0.c.x, -1i, arg_2.a.d.x), ~vec3<i32>(-1i, -2310i, -2147483647i)), any(!vec2<bool>(var_0.a.x, var_0.a.x))), -var_0.d));
    return Struct_4(var_2, var_0.a, Struct_2(func_2(var_0.a.x & var_0.a.x, select(vec3<bool>(true, false, global4[_wgslsmith_index_u32(0u, 14u)]), vec3<bool>(false, arg_2.a.a.x, true), vec3<bool>(true, arg_2.a.a.x, global4[_wgslsmith_index_u32(u_input.b, 14u)]))).yz << (_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b, 0u), vec2<u32>(arg_2.a.b, u_input.b)), max(vec2<u32>(arg_2.a.b, arg_0.b), vec2<u32>(38342u, var_0.b))) % vec2<u32>(32u)), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(1416u, 1u, var_0.b, 1u)), ~(global0[_wgslsmith_index_u32(1u, 1u)] >> (global0[_wgslsmith_index_u32(0u, 1u)] % vec4<u32>(32u)))), vec2<bool>(var_0.a.x, arg_0.a.x), !func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, 1u), vec3<u32>(0u, arg_2.a.b, var_0.b)))), -1i);
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32((vec3<u32>(u_input.b, 20397u, u_input.b) & vec3<u32>(0u, 34768u, 4294967295u)) & ~vec3<u32>(41515u, u_input.b, 15301u), ~(vec3<u32>(1u, u_input.b, u_input.b) | vec3<u32>(u_input.b, 4294967295u, u_input.b))), u_input.b);
    let var_1 = func_4(Struct_1(vec2<bool>(true, true), ~(42845u ^ ~var_0), vec4<i32>(u_input.a, u_input.a, ~(-929i), -22615i), vec3<i32>(-1i) * -func_2(global4[_wgslsmith_index_u32(79445u, 14u)], vec3<bool>(true, true, true))), vec4<i32>(_wgslsmith_clamp_i32(u_input.a, -(u_input.a & u_input.a), -(u_input.a & -2172i)), 0i, u_input.a, ~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(7923i, u_input.a, 44430i), vec3<i32>(-10231i, u_input.a, -2147483647i)), abs(2516i))), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(var_0, abs(u_input.b)), 1u ^ u_input.b), 30u)], u_input.a);
    global4 = array<bool, 14>();
    let var_2 = min(vec4<i32>(_wgslsmith_sub_i32(~u_input.a, _wgslsmith_div_i32(1i, min(-2147483647i, u_input.a))), u_input.a, u_input.a, _wgslsmith_add_i32(u_input.a, i32(-1i) * -2147483647i) | 2147483647i), (vec4<i32>(u_input.a, -24915i, var_1.c.a.x, _wgslsmith_div_i32(-2147483647i, var_1.d)) >> (vec4<u32>(func_4(Struct_1(var_1.b, var_1.c.b.x, vec4<i32>(5172i, -2147483647i, u_input.a, -2147483647i), vec3<i32>(u_input.a, 2147483647i, u_input.a)), vec4<i32>(var_1.d, var_1.d, u_input.a, var_1.d), global3[_wgslsmith_index_u32(var_0, 30u)], var_1.d).c.b.x, ~u_input.b, 54543u & var_1.c.b.x, ~var_0) % vec4<u32>(32u))) >> ((min(global0[_wgslsmith_index_u32(abs(var_0), 1u)], _wgslsmith_mult_vec4_u32(var_1.c.b, vec4<u32>(4294967295u, 44676u, u_input.b, 1u))) | var_1.c.b) % vec4<u32>(32u)));
    global2 = ~_wgslsmith_dot_vec4_i32(min(firstTrailingBit(var_2), -vec4<i32>(var_2.x, u_input.a, 43541i, -2147483647i)), var_2);
    return Struct_2(var_2.yw, select(var_1.c.b, abs(vec4<u32>(u_input.b, var_0, 0u, 44943u) >> (~vec4<u32>(var_0, 0u, 11760u, 0u) % vec4<u32>(32u))), global4[_wgslsmith_index_u32(36939u, 14u)]), func_4(Struct_1(!var_1.b, ~(~var_0), abs(-vec4<i32>(var_1.c.a.x, var_1.c.a.x, u_input.a, var_2.x)), vec3<i32>(~u_input.a, 20597i, 1i)), select(vec4<i32>(-19377i, -12667i, var_1.d, ~(-9267i)), -abs(vec4<i32>(-22234i, 9719i, var_1.c.a.x, 0i)), vec4<bool>(true, true, true, true)), Struct_3(Struct_1(!vec2<bool>(true, global4[_wgslsmith_index_u32(u_input.b, 14u)]), 29128u, min(var_2, var_2), vec3<i32>(85747i, var_1.c.a.x, 42059i) >> (vec3<u32>(u_input.b, u_input.b, var_0) % vec3<u32>(32u)))), -36899i).c.c, vec2<bool>(!select(false & var_1.c.d.x, true, any(vec3<bool>(var_1.b.x, true, false))), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(u_input.b, firstTrailingBit(1u));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-213f, 1004f))), _wgslsmith_f_op_f32(step(-1033f, _wgslsmith_f_op_f32(step(2031f, 2554f)))), all(vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_f32(400f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * 1348f)), _wgslsmith_f_op_f32(round(413f)), 1061f);
    let var_2 = func_1();
    global4 = array<bool, 14>();
    var var_3 = _wgslsmith_mult_vec4_u32(vec4<u32>(firstTrailingBit(var_2.b.x), ~var_2.b.x >> (~u_input.b % 32u), ~u_input.b, u_input.b) >> (~global0[_wgslsmith_index_u32(24013u, 1u)] % vec4<u32>(32u)), select(var_2.b, _wgslsmith_div_vec4_u32(select(~vec4<u32>(25639u, 20357u, var_2.b.x, var_2.b.x), global0[_wgslsmith_index_u32(func_4(Struct_1(vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 14u)], global4[_wgslsmith_index_u32(88487u, 14u)]), u_input.b, vec4<i32>(u_input.a, 33260i, 0i, var_2.a.x), vec3<i32>(u_input.a, u_input.a, var_2.a.x)), vec4<i32>(u_input.a, 26501i, u_input.a, 18569i), Struct_3(Struct_1(vec2<bool>(global4[_wgslsmith_index_u32(u_input.b, 14u)], var_2.d.x), var_2.b.x, vec4<i32>(-2147483647i, -2147483647i, 13549i, -2147483647i), vec3<i32>(var_2.a.x, 10410i, -2147483647i))), u_input.a).c.b.x, 1u)], !vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 14u)], true, global4[_wgslsmith_index_u32(4294967295u, 14u)], var_2.d.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_2.b.x, u_input.b, 1u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, var_2.b.x, 1u))), !(_wgslsmith_add_u32(var_2.b.x, 0u) >= (u_input.b << (27759u % 32u)))));
    var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1680f, var_1.x, 368f))))) + vec4<f32>(-102f, _wgslsmith_f_op_f32(f32(-1f) * -688f), -712f, var_1.x))));
    var var_4 = _wgslsmith_clamp_i32(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a | -49456i, 1i, ~var_2.a.x << (~4911u % 32u)), firstLeadingBit(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -38497i, -2147483647i), vec3<i32>(var_2.a.x, 2147483647i, 15053i))))), func_1().a.x | func_1().a.x);
    let var_5 = var_2.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.x + var_1.x), ~_wgslsmith_sub_vec2_u32(firstLeadingBit(var_2.b.xx), var_3.yz));
}

