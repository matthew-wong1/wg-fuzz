struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec3<u32>(6429u, 19789u, 65825u), Struct_1(vec2<u32>(90649u, 37860u), 2147483647i, true, vec3<i32>(27779i, 0i, 2147483647i)), Struct_1(vec2<u32>(46754u, 91466u), -1i, false, vec3<i32>(1i, 29961i, 30795i)), vec4<f32>(-1448f, -877f, 865f, 145f), Struct_1(vec2<u32>(1u, 31675u), -1i, true, vec3<i32>(-40451i, -25804i, 19045i))), Struct_2(vec3<u32>(1u, 4294967295u, 0u), Struct_1(vec2<u32>(36371u, 0u), 1i, true, vec3<i32>(-49678i, 35971i, -30786i)), Struct_1(vec2<u32>(4294967295u, 12673u), -24722i, false, vec3<i32>(49694i, i32(-2147483648), 2147483647i)), vec4<f32>(710f, -1460f, -614f, -536f), Struct_1(vec2<u32>(1u, 0u), 1i, false, vec3<i32>(47365i, 0i, 0i))), Struct_2(vec3<u32>(43828u, 15998u, 0u), Struct_1(vec2<u32>(1u, 16189u), -64007i, false, vec3<i32>(7642i, 0i, -1i)), Struct_1(vec2<u32>(4294967295u, 33505u), 1i, false, vec3<i32>(0i, 0i, 2147483647i)), vec4<f32>(1117f, -212f, -1546f, -1299f), Struct_1(vec2<u32>(65098u, 57646u), 10503i, false, vec3<i32>(-10121i, 7138i, i32(-2147483648)))), Struct_2(vec3<u32>(0u, 4294967295u, 351u), Struct_1(vec2<u32>(0u, 4294967295u), 26350i, false, vec3<i32>(1i, 38423i, 591i)), Struct_1(vec2<u32>(1u, 85055u), i32(-2147483648), false, vec3<i32>(22052i, 14727i, -1i)), vec4<f32>(-900f, 1015f, -791f, 186f), Struct_1(vec2<u32>(4294967295u, 41559u), 2147483647i, false, vec3<i32>(2147483647i, 1i, i32(-2147483648)))), Struct_2(vec3<u32>(48893u, 1u, 4294967295u), Struct_1(vec2<u32>(102233u, 68450u), 2147483647i, true, vec3<i32>(-1i, -12380i, -1i)), Struct_1(vec2<u32>(4294967295u, 1u), 2147483647i, true, vec3<i32>(-25372i, 59332i, i32(-2147483648))), vec4<f32>(981f, -1839f, 1779f, 1409f), Struct_1(vec2<u32>(23044u, 29053u), -1i, true, vec3<i32>(i32(-2147483648), 6125i, -63102i))), Struct_2(vec3<u32>(25494u, 0u, 1u), Struct_1(vec2<u32>(1u, 1u), 12222i, false, vec3<i32>(-11844i, 1i, -1i)), Struct_1(vec2<u32>(0u, 21869u), -39591i, false, vec3<i32>(0i, -20172i, i32(-2147483648))), vec4<f32>(249f, 1000f, 832f, 780f), Struct_1(vec2<u32>(27976u, 56861u), i32(-2147483648), false, vec3<i32>(393i, 1i, 23666i))), Struct_2(vec3<u32>(72686u, 15381u, 0u), Struct_1(vec2<u32>(1u, 61702u), 1i, true, vec3<i32>(2147483647i, 15014i, -1i)), Struct_1(vec2<u32>(1u, 57770u), i32(-2147483648), false, vec3<i32>(1i, 1i, 42568i)), vec4<f32>(-896f, 683f, -268f, 732f), Struct_1(vec2<u32>(24352u, 3416u), 0i, false, vec3<i32>(-29189i, 2147483647i, 2935i))), Struct_2(vec3<u32>(4294967295u, 73679u, 21249u), Struct_1(vec2<u32>(2746u, 66205u), 2284i, false, vec3<i32>(17697i, -14299i, 1i)), Struct_1(vec2<u32>(80471u, 4294967295u), -1i, false, vec3<i32>(0i, 9251i, i32(-2147483648))), vec4<f32>(-651f, -113f, 2691f, -1049f), Struct_1(vec2<u32>(4294967295u, 26695u), 0i, true, vec3<i32>(-25251i, -1i, i32(-2147483648)))), Struct_2(vec3<u32>(27621u, 38870u, 4294967295u), Struct_1(vec2<u32>(1u, 4294967295u), 1i, true, vec3<i32>(-10546i, 62136i, 0i)), Struct_1(vec2<u32>(0u, 0u), 1i, true, vec3<i32>(2147483647i, 2147483647i, i32(-2147483648))), vec4<f32>(-792f, -115f, 1696f, -1194f), Struct_1(vec2<u32>(12870u, 34596u), -1i, false, vec3<i32>(-15076i, 53703i, 0i))), Struct_2(vec3<u32>(9076u, 31657u, 41441u), Struct_1(vec2<u32>(4294967295u, 0u), 57607i, false, vec3<i32>(-17021i, -1i, 1i)), Struct_1(vec2<u32>(67256u, 1u), i32(-2147483648), false, vec3<i32>(0i, 2147483647i, 2147483647i)), vec4<f32>(-106f, 1316f, -1470f, 1201f), Struct_1(vec2<u32>(29832u, 0u), 2147483647i, false, vec3<i32>(0i, 0i, 29390i))), Struct_2(vec3<u32>(49951u, 54133u, 38603u), Struct_1(vec2<u32>(0u, 24574u), -1i, false, vec3<i32>(-23875i, 2147483647i, 1i)), Struct_1(vec2<u32>(10339u, 1u), 270i, true, vec3<i32>(-1i, 18965i, i32(-2147483648))), vec4<f32>(-1380f, -1063f, 110f, 369f), Struct_1(vec2<u32>(1u, 59866u), 1i, false, vec3<i32>(2147483647i, -6207i, 41036i))), Struct_2(vec3<u32>(88591u, 50646u, 1u), Struct_1(vec2<u32>(4294967295u, 4294967295u), 6718i, true, vec3<i32>(5838i, 34366i, 2147483647i)), Struct_1(vec2<u32>(63371u, 1u), 33054i, true, vec3<i32>(i32(-2147483648), -1894i, -1i)), vec4<f32>(-499f, -198f, 1069f, -718f), Struct_1(vec2<u32>(0u, 85510u), -1i, false, vec3<i32>(2147483647i, 0i, 0i))), Struct_2(vec3<u32>(0u, 4294967295u, 10249u), Struct_1(vec2<u32>(90150u, 0u), -1i, true, vec3<i32>(-13162i, i32(-2147483648), -1i)), Struct_1(vec2<u32>(4294967295u, 1u), 10200i, true, vec3<i32>(35198i, 0i, 11848i)), vec4<f32>(-1248f, -1713f, -147f, 419f), Struct_1(vec2<u32>(4294967295u, 49638u), 2147483647i, true, vec3<i32>(2147483647i, 0i, -1i))));

var<private> global2: Struct_2;

var<private> global3: array<Struct_2, 26>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> u32 {
    global3 = array<Struct_2, 26>();
    global0 = array<Struct_1, 8>();
    var var_0 = -1i;
    var var_1 = vec2<u32>(1u, u_input.b.x);
    let var_2 = 45213i;
    return ~firstTrailingBit(~4294967295u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool, arg_3: vec3<bool>) -> vec4<bool> {
    var var_0 = _wgslsmith_dot_vec4_u32(reverseBits(~(vec4<u32>(arg_0.a.x, 4294967295u, u_input.a.x, global2.a.x) ^ (vec4<u32>(arg_0.a.x, 19795u, u_input.a.x, u_input.a.x) & vec4<u32>(arg_0.a.x, 1u, global2.e.a.x, arg_0.a.x)))), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(global2.a.x, 2280u, 4294967295u, u_input.a.x), vec4<u32>(4294967295u, 153877u, 1281u, 91550u) | vec4<u32>(arg_0.a.x, 4294967295u, global2.c.a.x, global2.c.a.x))));
    global0 = array<Struct_1, 8>();
    global2 = Struct_2(max(vec3<u32>(firstTrailingBit(4294967295u), 0u, reverseBits(~global2.e.a.x)), _wgslsmith_mult_vec3_u32(abs(min(vec3<u32>(0u, 40327u, arg_0.a.x), vec3<u32>(64036u, global2.c.a.x, u_input.a.x))), ~(~vec3<u32>(u_input.c, 38440u, 1u)))), global2.e, Struct_1(vec2<u32>(~1u, 12598u), 84860i, true | (global2.d.x == -1934f), ~(-(arg_0.d | arg_1.zxx))), vec4<f32>(620f, global2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.x))), global2.d.x), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, global2.c.a.x, 63856u) | vec3<u32>(38107u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 32704u, 0u), global2.a), ~vec3<u32>(8972u, 42278u, arg_0.a.x)), global2.a), 8u)]);
    var var_1 = ~vec3<u32>(_wgslsmith_mult_u32(arg_0.a.x, ~(~global2.a.x)), 5275u, _wgslsmith_add_u32(1u, 11100u));
    global0 = array<Struct_1, 8>();
    return vec4<bool>(true, !(!arg_0.c), true, any(vec2<bool>(arg_0.c, any(select(vec4<bool>(true, false, global2.e.c, false), vec4<bool>(arg_3.x, arg_3.x, false, true), vec4<bool>(global2.c.c, arg_2, arg_3.x, true))))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_4 {
    var var_0 = 2147483647i;
    var var_1 = global2.a;
    let var_2 = ~func_2();
    global2 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(4294967295u, 30145u), ~1885u), 26u)];
    let var_3 = ~global2.a.x;
    return Struct_4(!select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(global2.e.c, arg_0.c, arg_0.c, false), arg_0.c), vec4<bool>(false, global2.b.c, arg_0.c, false), false), select(!vec4<bool>(global2.e.c, true, true, arg_0.c), vec4<bool>(false, true, true, false), !vec4<bool>(false, true, true, arg_1)), select(vec4<bool>(false, global2.c.c, global2.b.c, global2.e.c), select(vec4<bool>(arg_0.c, arg_1, global2.b.c, arg_1), vec4<bool>(arg_0.c, global2.e.c, arg_0.c, false), vec4<bool>(arg_0.c, false, false, true)), true)), ~(25128i | (reverseBits(global2.b.d.x) & global2.b.b)), Struct_1(vec2<u32>(4294967295u, select(42901u, 55527u, true)) << (global2.b.a % vec2<u32>(32u)), _wgslsmith_clamp_i32(i32(-1i) * -1i, -abs(arg_0.d.x), -67120i), arg_1, global2.c.d), global2.c, all(!(!func_3(arg_0, vec4<i32>(global2.c.b, arg_0.b, global2.c.b, global2.c.d.x), arg_1, vec3<bool>(global2.c.c, false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.c.d.zz;
    global0 = array<Struct_1, 8>();
    var var_1 = func_1(global2.c, true);
    var var_2 = true;
    var_1 = Struct_4(select(var_1.a, var_1.a, !select(vec4<bool>(true, var_1.a.x, global2.e.c, true), var_1.a, var_1.a)), -_wgslsmith_dot_vec3_i32(select(func_1(var_1.d, true).d.d, global2.c.d, true), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(var_1.c.d, global2.e.d), select(vec3<i32>(0i, var_0.x, 0i), vec3<i32>(global2.b.d.x, 17240i, var_1.c.b), var_1.a.xxx))), Struct_1(vec2<u32>(firstLeadingBit(~global2.b.a.x), 0u), max(global2.c.d.x, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(var_1.d.d, vec3<i32>(var_1.c.d.x, 61468i, -1i)), countOneBits(vec3<i32>(-1i, global2.b.b, global2.e.d.x)))), ~1u <= u_input.c, firstTrailingBit(_wgslsmith_mod_vec3_i32(global2.c.d, vec3<i32>(-2147483647i, var_1.b, 0i)) >> (global2.a % vec3<u32>(32u)))), Struct_1(var_1.c.a, firstLeadingBit(-21725i), global2.e.c, ~global2.b.d), 30597u <= ~global2.c.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-447f, global2.d.x)))), _wgslsmith_f_op_f32(global2.d.x - _wgslsmith_f_op_f32(-593f * -797f)))), _wgslsmith_mod_i32(global2.e.b, ~(var_0.x << (4294967295u % 32u))) & -select(var_0.x, var_1.c.b, global2.c.c), var_1.c.d.x, _wgslsmith_div_vec4_u32(min(~(~vec4<u32>(u_input.b.x, var_1.c.a.x, u_input.c, 4294967295u)), ~(~vec4<u32>(61689u, u_input.a.x, u_input.b.x, 4294967295u))), ~firstLeadingBit(~vec4<u32>(u_input.a.x, 4294967295u, u_input.b.x, 4294967295u))));
}

