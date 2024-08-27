struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec3<bool>, 2> = array<vec3<bool>, 2>(vec3<bool>(true, true, true), vec3<bool>(true, false, false));

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec4<u32>(29050u, 0u, 48734u, 62186u), vec2<i32>(-65633i, 1i), vec2<i32>(-34684i, -37199i), vec3<u32>(1u, 0u, 2966u)), Struct_1(vec4<u32>(39940u, 1u, 0u, 0u), vec2<i32>(-959i, -1i), vec2<i32>(i32(-2147483648), -1i), vec3<u32>(1u, 0u, 44181u)), Struct_1(vec4<u32>(1u, 9136u, 3729u, 0u), vec2<i32>(4875i, i32(-2147483648)), vec2<i32>(0i, 1831i), vec3<u32>(34317u, 1u, 0u)), Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), vec2<i32>(0i, -47396i), vec2<i32>(0i, 72462i), vec3<u32>(21280u, 4294967295u, 29687u)), Struct_1(vec4<u32>(4294967295u, 92586u, 0u, 1u), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-9415i, 16832i), vec3<u32>(4294967295u, 26071u, 11611u)), Struct_1(vec4<u32>(0u, 4294967295u, 0u, 55716u), vec2<i32>(-50638i, -36318i), vec2<i32>(-15569i, -44897i), vec3<u32>(43162u, 0u, 16478u)), Struct_1(vec4<u32>(4294967295u, 31463u, 7752u, 24202u), vec2<i32>(-3005i, -1571i), vec2<i32>(-41483i, 26004i), vec3<u32>(0u, 0u, 7378u)), Struct_1(vec4<u32>(24554u, 4294967295u, 4294967295u, 1u), vec2<i32>(0i, 0i), vec2<i32>(27219i, i32(-2147483648)), vec3<u32>(1u, 6921u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 0u, 12032u, 8052u), vec2<i32>(-1i, 4150i), vec2<i32>(2147483647i, 63574i), vec3<u32>(0u, 32319u, 1u)), Struct_1(vec4<u32>(22892u, 73623u, 12077u, 4294967295u), vec2<i32>(-1i, -34964i), vec2<i32>(-1i, -11351i), vec3<u32>(1u, 1u, 55401u)), Struct_1(vec4<u32>(1u, 25127u, 21498u, 93310u), vec2<i32>(2147483647i, 1i), vec2<i32>(1i, 2147483647i), vec3<u32>(0u, 1u, 22609u)), Struct_1(vec4<u32>(1u, 0u, 0u, 1u), vec2<i32>(28181i, 0i), vec2<i32>(1i, 1i), vec3<u32>(72289u, 38090u, 43726u)), Struct_1(vec4<u32>(1u, 17537u, 1u, 71773u), vec2<i32>(-1i, 36328i), vec2<i32>(9828i, 1i), vec3<u32>(4294967295u, 19848u, 0u)), Struct_1(vec4<u32>(0u, 25653u, 1u, 9565u), vec2<i32>(-26479i, -63649i), vec2<i32>(5581i, 1i), vec3<u32>(62741u, 27495u, 17494u)), Struct_1(vec4<u32>(39374u, 4294967295u, 105582u, 0u), vec2<i32>(21736i, -33627i), vec2<i32>(1i, 2147483647i), vec3<u32>(10852u, 0u, 67612u)), Struct_1(vec4<u32>(25089u, 0u, 86413u, 4294967295u), vec2<i32>(32361i, 0i), vec2<i32>(1i, 0i), vec3<u32>(0u, 4294967295u, 54963u)), Struct_1(vec4<u32>(4294967295u, 84458u, 1u, 0u), vec2<i32>(2147483647i, 0i), vec2<i32>(2147483647i, 2147483647i), vec3<u32>(53334u, 1u, 15809u)), Struct_1(vec4<u32>(3470u, 4294967295u, 1u, 88243u), vec2<i32>(46893i, 23249i), vec2<i32>(1i, 20625i), vec3<u32>(35640u, 46143u, 1u)), Struct_1(vec4<u32>(4294967295u, 5613u, 21951u, 1u), vec2<i32>(1i, 103i), vec2<i32>(-35395i, -1i), vec3<u32>(4294967295u, 0u, 70815u)), Struct_1(vec4<u32>(6696u, 1u, 0u, 1u), vec2<i32>(-1i, 1i), vec2<i32>(2345i, 37319i), vec3<u32>(0u, 74983u, 4294967295u)), Struct_1(vec4<u32>(0u, 18792u, 52448u, 0u), vec2<i32>(-41614i, 12255i), vec2<i32>(-25238i, 0i), vec3<u32>(14024u, 6196u, 91452u)));

var<private> global3: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec4<u32>(1u, 4294967295u, 61047u, 4294967295u), vec2<i32>(9243i, 17131i), vec2<i32>(i32(-2147483648), 2147483647i), vec3<u32>(1u, 53140u, 4294967295u)), Struct_1(vec4<u32>(8989u, 4294967295u, 4294967295u, 8592u), vec2<i32>(2147483647i, -1i), vec2<i32>(25231i, -1i), vec3<u32>(0u, 38082u, 0u)), Struct_1(vec4<u32>(1u, 32482u, 75404u, 0u), vec2<i32>(-1i, -1i), vec2<i32>(2743i, -36378i), vec3<u32>(0u, 0u, 525u)), Struct_1(vec4<u32>(32073u, 0u, 12314u, 4294967295u), vec2<i32>(-1i, -40116i), vec2<i32>(-4297i, 1i), vec3<u32>(0u, 76167u, 43570u)), Struct_1(vec4<u32>(49429u, 4294967295u, 10669u, 4294967295u), vec2<i32>(2147483647i, 1i), vec2<i32>(1i, 8995i), vec3<u32>(65761u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(95409u, 82754u, 1u, 5546u), vec2<i32>(0i, 0i), vec2<i32>(-47004i, i32(-2147483648)), vec3<u32>(9712u, 90834u, 0u)), Struct_1(vec4<u32>(37961u, 32292u, 4294967295u, 1u), vec2<i32>(1i, 2147483647i), vec2<i32>(-1i, 28678i), vec3<u32>(0u, 0u, 9129u)), Struct_1(vec4<u32>(4294967295u, 0u, 21091u, 18248u), vec2<i32>(-1509i, -1i), vec2<i32>(22199i, -24899i), vec3<u32>(1u, 70793u, 4294967295u)), Struct_1(vec4<u32>(53292u, 48610u, 59486u, 59063u), vec2<i32>(-13490i, 0i), vec2<i32>(-1i, 0i), vec3<u32>(35117u, 60221u, 763u)), Struct_1(vec4<u32>(0u, 1u, 54890u, 52325u), vec2<i32>(-13292i, 1i), vec2<i32>(8837i, -1i), vec3<u32>(5197u, 1u, 19447u)), Struct_1(vec4<u32>(1u, 25555u, 85886u, 4294967295u), vec2<i32>(1i, 0i), vec2<i32>(-1i, 2147483647i), vec3<u32>(17590u, 0u, 76246u)), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 1u), vec2<i32>(0i, 9367i), vec2<i32>(955i, 27960i), vec3<u32>(17067u, 1u, 1u)), Struct_1(vec4<u32>(10357u, 0u, 2016u, 35775u), vec2<i32>(i32(-2147483648), 26502i), vec2<i32>(i32(-2147483648), -1i), vec3<u32>(4294967295u, 4294967295u, 29802u)), Struct_1(vec4<u32>(1u, 8596u, 1u, 82398u), vec2<i32>(i32(-2147483648), -7462i), vec2<i32>(29726i, -3666i), vec3<u32>(44436u, 35725u, 878u)), Struct_1(vec4<u32>(8095u, 20407u, 31806u, 17668u), vec2<i32>(7392i, i32(-2147483648)), vec2<i32>(-2648i, 76995i), vec3<u32>(4294967295u, 21192u, 1u)), Struct_1(vec4<u32>(0u, 6211u, 2656u, 42525u), vec2<i32>(0i, -33530i), vec2<i32>(i32(-2147483648), -8385i), vec3<u32>(0u, 0u, 19590u)), Struct_1(vec4<u32>(21262u, 29031u, 4294967295u, 0u), vec2<i32>(-1i, -1i), vec2<i32>(-2783i, i32(-2147483648)), vec3<u32>(36735u, 78995u, 1u)), Struct_1(vec4<u32>(0u, 32204u, 16719u, 4294967295u), vec2<i32>(-1i, 21635i), vec2<i32>(-1i, 729i), vec3<u32>(0u, 42405u, 58767u)), Struct_1(vec4<u32>(63844u, 31506u, 4294967295u, 4294967295u), vec2<i32>(-44550i, 2147483647i), vec2<i32>(i32(-2147483648), 17618i), vec3<u32>(108893u, 51256u, 56790u)), Struct_1(vec4<u32>(4294967295u, 70306u, 4294967295u, 12u), vec2<i32>(1i, -6968i), vec2<i32>(-1i, -3061i), vec3<u32>(14627u, 1u, 69117u)), Struct_1(vec4<u32>(47569u, 36496u, 44098u, 92788u), vec2<i32>(41758i, 2147483647i), vec2<i32>(4510i, -20605i), vec3<u32>(1u, 27529u, 1u)), Struct_1(vec4<u32>(0u, 54938u, 10304u, 0u), vec2<i32>(-82457i, -8355i), vec2<i32>(17463i, 2147483647i), vec3<u32>(1u, 4294967295u, 0u)), Struct_1(vec4<u32>(25871u, 4294967295u, 0u, 1u), vec2<i32>(0i, -1i), vec2<i32>(37304i, -3639i), vec3<u32>(1u, 1u, 132884u)), Struct_1(vec4<u32>(17538u, 0u, 11706u, 49048u), vec2<i32>(1i, 54690i), vec2<i32>(0i, 34659i), vec3<u32>(1u, 38090u, 1u)), Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 0u), vec2<i32>(1i, 0i), vec2<i32>(0i, -1i), vec3<u32>(15694u, 4294967295u, 0u)), Struct_1(vec4<u32>(4294967295u, 30882u, 0u, 1u), vec2<i32>(0i, 19042i), vec2<i32>(0i, 57847i), vec3<u32>(1u, 0u, 0u)), Struct_1(vec4<u32>(62558u, 1543u, 15545u, 4294967295u), vec2<i32>(0i, -43075i), vec2<i32>(1i, -22639i), vec3<u32>(19399u, 66658u, 0u)), Struct_1(vec4<u32>(4294967295u, 17729u, 31757u, 1u), vec2<i32>(-11717i, -10756i), vec2<i32>(28973i, 0i), vec3<u32>(4294967295u, 36916u, 1u)), Struct_1(vec4<u32>(9204u, 22176u, 80738u, 1u), vec2<i32>(13843i, 1i), vec2<i32>(2147483647i, -28103i), vec3<u32>(4294967295u, 113317u, 1u)), Struct_1(vec4<u32>(23758u, 4294967295u, 1u, 0u), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(i32(-2147483648), -1i), vec3<u32>(1u, 4294967295u, 82316u)), Struct_1(vec4<u32>(0u, 5303u, 4294967295u, 24828u), vec2<i32>(12440i, 2147483647i), vec2<i32>(1i, 0i), vec3<u32>(0u, 45304u, 1u)), Struct_1(vec4<u32>(1u, 1u, 0u, 0u), vec2<i32>(7890i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 0i), vec3<u32>(4294967295u, 8831u, 0u)));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(903f)))) * arg_1);
}

fn func_3(arg_0: u32) -> f32 {
    global3 = array<Struct_1, 32>();
    global3 = array<Struct_1, 32>();
    global1 = array<vec3<bool>, 2>();
    let var_0 = _wgslsmith_sub_vec3_u32(~abs(u_input.b.yzy), abs(_wgslsmith_mult_vec3_u32(u_input.b.xwy, u_input.b.yxw ^ abs(u_input.b.xxy))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1177f);
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = select(!global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.x, u_input.b.x), 2u)], global1[_wgslsmith_index_u32(~0u, 2u)], vec3<bool>(any(arg_3), 0i <= arg_2.c.x, arg_3.x));
    global1 = array<vec3<bool>, 2>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -105f))))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * -359f))) + vec2<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -626f)));
    var var_2 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(13414u, 1u, ~arg_2.d.x), ~(~vec3<u32>(countOneBits(4294967295u), ~1u, 9455u)), vec3<u32>(global0.x, ~(~global0.x), 1u) << (arg_2.d % vec3<u32>(32u)));
    let var_3 = var_0.x;
    return Struct_1(u_input.b & vec4<u32>(61581u, _wgslsmith_dot_vec2_u32(vec2<u32>(100638u, 1u), ~vec2<u32>(64765u, var_2.x)), global0.x, 1u), abs(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(u_input.a.x, arg_2.b.x) << (vec2<u32>(13884u, global0.x) % vec2<u32>(32u))), u_input.c.xz)), _wgslsmith_add_vec2_i32(-arg_2.b >> (vec2<u32>(1u, ~arg_2.d.x) % vec2<u32>(32u)), ~abs(select(arg_2.c, vec2<i32>(1i, -23518i), false))), arg_2.a.wyy);
}

fn func_1() -> i32 {
    global2 = array<Struct_1, 21>();
    let var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.d, -1138f, Struct_1(vec4<u32>(u_input.b.x, global0.x, global0.x, global0.x), u_input.a.yx, u_input.a.yz, vec3<u32>(u_input.b.x, 1u, global0.x))))) + -167f) + 159f), _wgslsmith_f_op_f32(func_3(29328u)), global2[_wgslsmith_index_u32(25660u, 21u)], vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1232f)) * _wgslsmith_f_op_f32(ceil(-229f))) == 1852f, true));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(2395f)))))), var_0.a.www, var_0, _wgslsmith_sub_vec3_i32(u_input.a << (var_0.a.zxx % vec3<u32>(32u)), -vec3<i32>(1i, abs(2147483647i), 0i)), 139f);
    var var_2 = global1[_wgslsmith_index_u32(var_0.d.x, 2u)];
    var var_3 = var_1.e;
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~vec3<u32>(~(~global0.x), ~global0.x, 47668u));
    let var_1 = _wgslsmith_div_u32(~(~41882u), 102329u);
    var var_2 = -vec4<i32>(u_input.a.x, func_1(), -func_4(-789f, 1014f, Struct_1(u_input.b, vec2<i32>(u_input.a.x, -2147483647i), vec2<i32>(-76591i, u_input.a.x), vec3<u32>(18386u, u_input.b.x, 14077u)), vec2<bool>(false, true)).b.x & _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.d, u_input.a.x, u_input.a.x, u_input.d), vec4<i32>(-39926i, 70360i, u_input.a.x, -14638i) & u_input.c), firstLeadingBit(i32(-1i) * -2147483647i));
    global2 = array<Struct_1, 21>();
    global2 = array<Struct_1, 21>();
    let var_3 = ~(~1i);
    var_2 = u_input.c;
    global3 = array<Struct_1, 32>();
    let var_4 = Struct_1(select(u_input.b, vec4<u32>(u_input.b.x, _wgslsmith_add_u32(var_1, var_0.x), u_input.b.x, ~1u), true) | ~(u_input.b >> (vec4<u32>(33778u, global0.x, var_0.x, 1u) % vec4<u32>(32u))), ~(~(~reverseBits(vec2<i32>(u_input.c.x, -4508i)))), var_2.ww, abs(_wgslsmith_add_vec3_u32(u_input.b.zyw, vec3<u32>(_wgslsmith_mult_u32(0u, 3622u), var_1 >> (global0.x % 32u), var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer((var_4.d.x >> (countOneBits(_wgslsmith_clamp_u32(0u, var_1, 16140u)) % 32u)) ^ u_input.b.x);
}

