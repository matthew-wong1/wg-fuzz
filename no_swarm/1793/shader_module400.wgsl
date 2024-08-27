struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(vec3<i32>(-49285i, i32(-2147483648), 3120i), Struct_2(vec4<u32>(59431u, 56789u, 0u, 4294967295u), -41717i, Struct_1(vec4<bool>(false, true, false, true)), true), Struct_2(vec4<u32>(1u, 8905u, 1u, 10487u), 2147483647i, Struct_1(vec4<bool>(true, true, false, true)), true), Struct_2(vec4<u32>(45445u, 0u, 30235u, 4263u), 24436i, Struct_1(vec4<bool>(true, false, true, true)), false)), Struct_3(vec3<i32>(2147483647i, 1i, i32(-2147483648)), Struct_2(vec4<u32>(32730u, 22341u, 15224u, 0u), 37898i, Struct_1(vec4<bool>(true, true, true, true)), false), Struct_2(vec4<u32>(4294967295u, 24611u, 0u, 4294967295u), -5627i, Struct_1(vec4<bool>(true, false, false, true)), false), Struct_2(vec4<u32>(66818u, 7562u, 69182u, 60885u), -1i, Struct_1(vec4<bool>(false, false, true, false)), true)), Struct_3(vec3<i32>(2147483647i, -69595i, 0i), Struct_2(vec4<u32>(0u, 4294967295u, 57606u, 28274u), 15845i, Struct_1(vec4<bool>(false, true, false, false)), true), Struct_2(vec4<u32>(26848u, 4294967295u, 1u, 1u), -1i, Struct_1(vec4<bool>(false, true, true, true)), true), Struct_2(vec4<u32>(4294967295u, 4294967295u, 0u, 0u), 1i, Struct_1(vec4<bool>(true, false, false, false)), true)), Struct_3(vec3<i32>(29277i, 0i, 2147483647i), Struct_2(vec4<u32>(4294967295u, 1u, 64820u, 11220u), 0i, Struct_1(vec4<bool>(true, false, true, false)), false), Struct_2(vec4<u32>(3975u, 4294967295u, 23361u, 8790u), -68550i, Struct_1(vec4<bool>(false, true, true, false)), false), Struct_2(vec4<u32>(4294967295u, 5839u, 19655u, 49016u), 437i, Struct_1(vec4<bool>(true, false, false, true)), true)), Struct_3(vec3<i32>(5696i, 2147483647i, -3606i), Struct_2(vec4<u32>(12475u, 103429u, 0u, 65516u), -30477i, Struct_1(vec4<bool>(true, false, false, false)), true), Struct_2(vec4<u32>(1u, 2238u, 36853u, 8058u), 9643i, Struct_1(vec4<bool>(false, false, true, false)), true), Struct_2(vec4<u32>(4294967295u, 47269u, 4294967295u, 38271u), 1i, Struct_1(vec4<bool>(false, true, false, false)), true)), Struct_3(vec3<i32>(-1238i, -38307i, -29866i), Struct_2(vec4<u32>(13134u, 0u, 1u, 60365u), 20942i, Struct_1(vec4<bool>(true, true, false, true)), true), Struct_2(vec4<u32>(23836u, 103560u, 49163u, 1u), -1i, Struct_1(vec4<bool>(false, true, true, false)), true), Struct_2(vec4<u32>(52166u, 4294967295u, 4294967295u, 0u), 0i, Struct_1(vec4<bool>(false, false, true, true)), true)), Struct_3(vec3<i32>(2147483647i, 4548i, 1i), Struct_2(vec4<u32>(1u, 4294967295u, 39415u, 38483u), -918i, Struct_1(vec4<bool>(false, false, false, false)), false), Struct_2(vec4<u32>(0u, 1u, 0u, 20856u), 55882i, Struct_1(vec4<bool>(false, true, true, false)), false), Struct_2(vec4<u32>(4294967295u, 76874u, 1u, 49823u), i32(-2147483648), Struct_1(vec4<bool>(false, false, true, true)), true)), Struct_3(vec3<i32>(-7527i, 0i, -28111i), Struct_2(vec4<u32>(1u, 1u, 1u, 0u), -4359i, Struct_1(vec4<bool>(true, true, false, true)), true), Struct_2(vec4<u32>(0u, 0u, 70836u, 0u), -1i, Struct_1(vec4<bool>(false, false, false, true)), false), Struct_2(vec4<u32>(2210u, 19114u, 4294967295u, 0u), 0i, Struct_1(vec4<bool>(true, true, true, true)), true)), Struct_3(vec3<i32>(16863i, i32(-2147483648), 0i), Struct_2(vec4<u32>(19544u, 6947u, 51630u, 32363u), -6506i, Struct_1(vec4<bool>(true, false, false, true)), false), Struct_2(vec4<u32>(0u, 36328u, 34051u, 21128u), 0i, Struct_1(vec4<bool>(false, true, false, false)), true), Struct_2(vec4<u32>(0u, 1u, 4294967295u, 4294967295u), i32(-2147483648), Struct_1(vec4<bool>(false, false, false, false)), false)), Struct_3(vec3<i32>(i32(-2147483648), 23113i, 4686i), Struct_2(vec4<u32>(1u, 1u, 56703u, 76740u), 2464i, Struct_1(vec4<bool>(false, true, true, false)), false), Struct_2(vec4<u32>(1u, 30198u, 26442u, 74818u), 18827i, Struct_1(vec4<bool>(true, false, false, false)), true), Struct_2(vec4<u32>(4294967295u, 40156u, 0u, 17983u), 2147483647i, Struct_1(vec4<bool>(false, false, false, false)), false)), Struct_3(vec3<i32>(49326i, -1i, 2147483647i), Struct_2(vec4<u32>(101734u, 35513u, 0u, 4294967295u), 1i, Struct_1(vec4<bool>(true, false, false, true)), true), Struct_2(vec4<u32>(4294967295u, 21252u, 18092u, 4294967295u), -17801i, Struct_1(vec4<bool>(false, false, false, true)), true), Struct_2(vec4<u32>(26129u, 12798u, 4294967295u, 1u), 32887i, Struct_1(vec4<bool>(false, false, true, false)), false)), Struct_3(vec3<i32>(0i, 32737i, i32(-2147483648)), Struct_2(vec4<u32>(116758u, 4294967295u, 54251u, 4294967295u), 1i, Struct_1(vec4<bool>(false, false, false, false)), false), Struct_2(vec4<u32>(4294967295u, 70173u, 4294967295u, 4294967295u), 0i, Struct_1(vec4<bool>(true, false, true, true)), true), Struct_2(vec4<u32>(27788u, 44948u, 4294967295u, 6385u), -27714i, Struct_1(vec4<bool>(false, true, true, false)), false)), Struct_3(vec3<i32>(-9004i, 2147483647i, 0i), Struct_2(vec4<u32>(4294967295u, 1u, 1u, 5221u), -114i, Struct_1(vec4<bool>(false, true, true, false)), true), Struct_2(vec4<u32>(1u, 0u, 74141u, 0u), -38836i, Struct_1(vec4<bool>(true, true, true, true)), true), Struct_2(vec4<u32>(4294967295u, 38673u, 124188u, 4294967295u), -58858i, Struct_1(vec4<bool>(false, false, true, true)), true)), Struct_3(vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), Struct_2(vec4<u32>(1u, 74399u, 5005u, 4294967295u), i32(-2147483648), Struct_1(vec4<bool>(true, false, false, true)), false), Struct_2(vec4<u32>(21049u, 1u, 0u, 0u), 0i, Struct_1(vec4<bool>(false, true, true, true)), true), Struct_2(vec4<u32>(0u, 35259u, 0u, 0u), 1i, Struct_1(vec4<bool>(false, true, true, true)), true)), Struct_3(vec3<i32>(4868i, 1i, 0i), Struct_2(vec4<u32>(47948u, 29035u, 4294967295u, 1u), -1i, Struct_1(vec4<bool>(false, false, true, false)), true), Struct_2(vec4<u32>(4294967295u, 70923u, 0u, 4294967295u), 2147483647i, Struct_1(vec4<bool>(true, true, true, false)), true), Struct_2(vec4<u32>(0u, 42465u, 1805u, 16585u), -28089i, Struct_1(vec4<bool>(false, false, false, false)), false)), Struct_3(vec3<i32>(-1i, -9130i, 26030i), Struct_2(vec4<u32>(35680u, 0u, 63062u, 5350u), 32196i, Struct_1(vec4<bool>(true, true, false, false)), true), Struct_2(vec4<u32>(13693u, 4294967295u, 0u, 49952u), -24302i, Struct_1(vec4<bool>(true, true, false, false)), true), Struct_2(vec4<u32>(8847u, 24803u, 13236u, 4294967295u), -1i, Struct_1(vec4<bool>(false, true, true, false)), true)), Struct_3(vec3<i32>(-1i, 0i, i32(-2147483648)), Struct_2(vec4<u32>(1u, 86983u, 13416u, 4294967295u), 0i, Struct_1(vec4<bool>(false, false, false, false)), true), Struct_2(vec4<u32>(1u, 0u, 0u, 12460u), 30227i, Struct_1(vec4<bool>(true, false, true, false)), true), Struct_2(vec4<u32>(0u, 5417u, 4294967295u, 54941u), i32(-2147483648), Struct_1(vec4<bool>(true, false, true, false)), false)), Struct_3(vec3<i32>(-1i, -10882i, -1i), Struct_2(vec4<u32>(1u, 1u, 27961u, 2827u), 2147483647i, Struct_1(vec4<bool>(false, false, false, true)), true), Struct_2(vec4<u32>(0u, 100808u, 4213u, 26339u), 1i, Struct_1(vec4<bool>(false, false, false, true)), false), Struct_2(vec4<u32>(24520u, 4294967295u, 0u, 85951u), -29973i, Struct_1(vec4<bool>(false, true, true, true)), false)));

var<private> global1: array<u32, 18> = array<u32, 18>(75350u, 56062u, 101604u, 5189u, 1u, 89125u, 1u, 1u, 56323u, 0u, 1u, 6841u, 4294967295u, 1u, 1u, 4294967295u, 527u, 82425u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_2) -> f32 {
    let var_0 = select(arg_3.c.a.xxy, vec3<bool>(16492u > global1[_wgslsmith_index_u32(0u, 18u)], false, !any(vec2<bool>(arg_3.d, arg_3.c.a.x))), select(arg_3.c.a.yzw, select(vec3<bool>(true, true, arg_3.a.x < arg_3.a.x), vec3<bool>(true, arg_3.c.a.x, any(vec2<bool>(true, true))), true), vec3<bool>(false, !arg_3.c.a.x, false)));
    var var_1 = Struct_3(_wgslsmith_div_vec3_i32(u_input.a ^ -(vec3<i32>(arg_0.x, u_input.a.x, 5635i) << (vec3<u32>(25821u, arg_3.a.x, 54390u) % vec3<u32>(32u))), u_input.a), Struct_2(abs(vec4<u32>(~23825u, ~8566u, _wgslsmith_mult_u32(1u, arg_2), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(9015u, arg_2), 18u)])), arg_1.x, arg_3.c, arg_3.d), Struct_2(reverseBits(vec4<u32>(arg_3.a.x, 4294967295u, 1u, 26328u) >> (arg_3.a % vec4<u32>(32u))), arg_3.b, Struct_1(arg_3.c.a), any(!vec3<bool>(var_0.x, arg_3.c.a.x, var_0.x))), arg_3);
    global0 = array<Struct_3, 18>();
    let var_2 = _wgslsmith_mult_u32(4294967295u, min(global1[_wgslsmith_index_u32(4294967295u << (global1[_wgslsmith_index_u32(~select(29975u, var_1.c.a.x, var_0.x), 18u)] % 32u), 18u)], _wgslsmith_mod_u32(~(~9360u), 1u)));
    let var_3 = Struct_1(var_1.c.c.a);
    return -485f;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_3, arg_3: bool) -> f32 {
    let var_0 = ~vec2<u32>(67104u, ~_wgslsmith_mod_u32(_wgslsmith_add_u32(arg_1, 4294967295u), 29953u >> (arg_2.c.a.x % 32u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    let var_2 = arg_3;
    var var_3 = arg_2;
    var var_4 = arg_2;
    return -601f;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    global1 = array<u32, 18>();
    global1 = array<u32, 18>();
    let var_0 = Struct_2(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(76140u, 18u)], 18u)], 0u, global1[_wgslsmith_index_u32(6484u, 18u)], 0u), vec4<u32>(37461u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 1u, global1[_wgslsmith_index_u32(1u, 18u)])) << (~vec4<u32>(21161u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], 18u)], 4294967295u) % vec4<u32>(32u))), _wgslsmith_dot_vec2_i32(vec2<i32>(2318i, u_input.a.x), vec2<i32>(-1359i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(27951i, 10256i, u_input.a.x, u_input.a.x)) >> (50924u % 32u))), arg_0, !(firstLeadingBit(global1[_wgslsmith_index_u32(0u ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2978u, 18u)], 18u)], 18u)], 18u)]) > select(global1[_wgslsmith_index_u32(1u, 18u)], ~45951u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)] != 25578u)));
    var var_1 = var_0.a.xwz;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(101f)), _wgslsmith_f_op_f32(func_4(43701i, _wgslsmith_sub_u32(33106u, var_0.a.x), Struct_3(abs(u_input.a), var_0, var_0, Struct_2(vec4<u32>(1u, 0u, global1[_wgslsmith_index_u32(var_0.a.x, 18u)], var_1.x), u_input.a.x, arg_0, true)), 1000f >= _wgslsmith_f_op_f32(func_3(u_input.a.xx, vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), global1[_wgslsmith_index_u32(1u, 18u)], Struct_2(var_0.a, var_0.b, arg_0, true))))), true)), _wgslsmith_f_op_f32(f32(-1f) * -675f), 996f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1940f)));
    return Struct_2(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 18u)], 1u, global1[_wgslsmith_index_u32(1u, 18u)], ~0u), _wgslsmith_dot_vec4_i32(vec4<i32>(min(_wgslsmith_sub_i32(var_0.b, var_0.b), 1i), var_0.b, i32(-1i) * -2147483647i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -12431i, 20188i), vec3<i32>(2147483647i, var_0.b, var_0.b))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.b, u_input.a.x, var_0.b, 3383i), vec4<i32>(var_0.b, -1i, 30146i, -4713i) << (vec4<u32>(29926u, 4294967295u, 4294967295u, var_0.a.x) % vec4<u32>(32u)), -vec4<i32>(-6141i, u_input.a.x, 28333i, -2147483647i))), arg_0, (1i <= u_input.a.x) & true);
}

fn func_5(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_4, arg_3: Struct_2) -> vec4<u32> {
    global0 = array<Struct_3, 18>();
    let var_0 = func_2(arg_2.a.c).c;
    global1 = array<u32, 18>();
    let var_1 = Struct_4(func_2(arg_3.c), 1i, !(!var_0.a.x && true), arg_3);
    var var_2 = Struct_2(vec4<u32>(0u, select(_wgslsmith_div_u32(~global1[_wgslsmith_index_u32(arg_3.a.x, 18u)], _wgslsmith_add_u32(0u, arg_3.a.x)), ~1u, true), 1u, arg_2.d.a.x ^ arg_2.d.a.x), 24837i, func_2(var_1.d.c).c, any(!select(arg_3.c.a.yw, select(arg_2.a.c.a.ww, var_1.a.c.a.wx, var_1.c), true)));
    return ~vec4<u32>(0u, ~abs(global1[_wgslsmith_index_u32(51695u, 18u)]), 26623u, _wgslsmith_sub_u32(arg_2.a.a.x, 3562u)) ^ arg_2.a.a;
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(func_5(countOneBits(-u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -392f), Struct_4(func_2(Struct_1(vec4<bool>(true, true, true, true))), ~u_input.a.x, true, func_2(Struct_1(vec4<bool>(false, false, false, false)))), func_2(func_2(Struct_1(vec4<bool>(false, false, false, true))).c)) & countOneBits(vec4<u32>(global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)] & 90733u, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(1u, 18u)], 37964u), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(12511u, 18u)], 18u)], 18u)], 18u)])), u_input.a.x, func_2(func_2(func_2(Struct_1(vec4<bool>(false, false, false, false))).c).c).c, _wgslsmith_mod_u32(~1u, global1[_wgslsmith_index_u32(select(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(45306u, 18u)], 18u)], 18u)], 1u, all(vec3<bool>(true, true, false))), 18u)]) >= ~max(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], _wgslsmith_clamp_u32(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8346u, 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], global1[_wgslsmith_index_u32(738u, 18u)])));
    var var_1 = 0u ^ ~(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~3347u >> (~var_0.a.x % 32u), 18u)], 18u)] ^ (func_5(vec3<i32>(u_input.a.x, u_input.a.x, var_0.b), -1486f, Struct_4(Struct_2(vec4<u32>(var_0.a.x, var_0.a.x, 4294967295u, var_0.a.x), -21247i, var_0.c, false), var_0.b, var_0.c.a.x, Struct_2(var_0.a, 0i, Struct_1(var_0.c.a), true)), Struct_2(vec4<u32>(5471u, 38589u, 28184u, global1[_wgslsmith_index_u32(var_0.a.x, 18u)]), 3907i, var_0.c, false)).x ^ 1u));
    let var_2 = u_input.a.x;
    var_0 = func_2(var_0.c);
    return Struct_2(reverseBits(abs(~var_0.a)), u_input.a.x, func_2(var_0.c).c, var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = array<Struct_3, 18>();
    let var_1 = !(!(!var_0.c.a.yw));
    global1 = array<u32, 18>();
    var var_2 = var_0.a.xzy;
    let var_3 = u_input.a.x;
    let var_4 = ~var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.a.xy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(588f, 1f)))));
}

