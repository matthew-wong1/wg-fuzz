struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<u32> = vec4<u32>(1u, 4294967295u, 0u, 64830u);

var<private> global2: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec4<u32>(93875u, 30405u, 0u, 16348u), vec3<u32>(14216u, 4732u, 68144u)), Struct_1(vec4<u32>(18337u, 1u, 1u, 4294967295u), vec3<u32>(32552u, 0u, 4294967295u)), Struct_1(vec4<u32>(41410u, 4294967295u, 0u, 62567u), vec3<u32>(1u, 1u, 1u)), Struct_1(vec4<u32>(4294967295u, 54208u, 0u, 0u), vec3<u32>(0u, 4294967295u, 1u)), Struct_1(vec4<u32>(26718u, 15854u, 1u, 25106u), vec3<u32>(4294967295u, 2698u, 1u)), Struct_1(vec4<u32>(65711u, 60583u, 0u, 24077u), vec3<u32>(75944u, 18301u, 35344u)), Struct_1(vec4<u32>(2169u, 4294967295u, 4294967295u, 4294967295u), vec3<u32>(0u, 1u, 0u)), Struct_1(vec4<u32>(4294967295u, 18310u, 4294967295u, 316u), vec3<u32>(1u, 30528u, 28796u)), Struct_1(vec4<u32>(21922u, 38194u, 1u, 54927u), vec3<u32>(6291u, 4294967295u, 8588u)), Struct_1(vec4<u32>(17035u, 0u, 45409u, 18910u), vec3<u32>(1u, 68061u, 4294967295u)), Struct_1(vec4<u32>(40502u, 1566u, 99609u, 37857u), vec3<u32>(0u, 2808u, 1u)), Struct_1(vec4<u32>(36905u, 1984u, 1u, 4294967295u), vec3<u32>(56901u, 4294967295u, 23751u)), Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 0u), vec3<u32>(78602u, 66943u, 4294967295u)), Struct_1(vec4<u32>(1u, 53178u, 0u, 1u), vec3<u32>(44640u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(0u, 0u, 14794u, 5910u), vec3<u32>(13862u, 1u, 1u)), Struct_1(vec4<u32>(4294967295u, 1u, 84426u, 0u), vec3<u32>(85513u, 1u, 1u)), Struct_1(vec4<u32>(82520u, 0u, 111655u, 3057u), vec3<u32>(0u, 1u, 1u)), Struct_1(vec4<u32>(1u, 4294967295u, 1u, 1u), vec3<u32>(15074u, 4294967295u, 1u)), Struct_1(vec4<u32>(93596u, 4294967295u, 11075u, 4294967295u), vec3<u32>(40773u, 1u, 1u)), Struct_1(vec4<u32>(0u, 47455u, 0u, 39880u), vec3<u32>(4294967295u, 1u, 5490u)), Struct_1(vec4<u32>(30087u, 14151u, 24519u, 34757u), vec3<u32>(45202u, 1u, 91087u)), Struct_1(vec4<u32>(0u, 18613u, 4294967295u, 68778u), vec3<u32>(12512u, 75444u, 42448u)), Struct_1(vec4<u32>(46555u, 12384u, 35847u, 0u), vec3<u32>(4294967295u, 17119u, 1u)), Struct_1(vec4<u32>(4294967295u, 32430u, 4281u, 60158u), vec3<u32>(22932u, 15343u, 0u)), Struct_1(vec4<u32>(1u, 1u, 4294967295u, 22762u), vec3<u32>(4294967295u, 79126u, 1u)), Struct_1(vec4<u32>(7849u, 910u, 4294967295u, 4294967295u), vec3<u32>(10574u, 14233u, 1u)), Struct_1(vec4<u32>(92174u, 90726u, 83025u, 45736u), vec3<u32>(4294967295u, 1u, 1u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 38399u, 36416u), vec3<u32>(1u, 3011u, 14574u)));

var<private> global3: i32 = 30740i;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> vec3<bool> {
    global3 = arg_0;
    let var_0 = Struct_2(arg_1, all(vec4<bool>(!select(false, arg_2.c.x, arg_2.b), ~arg_0 <= 2147483647i, any(select(vec4<bool>(true, global0.b, false, true), vec4<bool>(global0.c.x, true, false, false), vec4<bool>(false, true, false, false))), all(select(global0.c, vec3<bool>(global0.c.x, global0.b, false), arg_2.c.x)))), vec3<bool>(true, any(vec3<bool>(true && arg_2.c.x, !global0.b, !global0.b)), global0.c.x), Struct_1(vec4<u32>(~u_input.a, 1u, 1u, countOneBits(0u << (global1.x % 32u))), ~vec3<u32>(~4294967295u, 1u << (global0.d.b.x % 32u), ~20734u)));
    var var_1 = Struct_2(var_0.a, any(select(var_0.c.yz, vec2<bool>(true, all(vec2<bool>(arg_2.b, global0.b))), vec2<bool>(true, true))), vec3<bool>(var_0.c.x, true, all(select(vec4<bool>(true, global0.c.x, global0.c.x, arg_2.b), vec4<bool>(true, arg_2.c.x, false, false), vec4<bool>(var_0.c.x, global0.b, true, arg_2.c.x))) & true), Struct_1(~arg_1.a, ~vec3<u32>(4294967295u, arg_1.b.x >> (global0.a.a.x % 32u), ~global1.x)));
    var_1 = Struct_2(Struct_1(vec4<u32>(var_1.a.a.x, ~(~global0.a.a.x), countOneBits(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(var_1.d.a.x, u_input.a))), 37963u >> (~var_1.a.a.x % 32u)), vec3<u32>(var_0.d.a.x, arg_2.a.b.x, 18085u)), all(!(!vec2<bool>(true, var_1.b))), vec3<bool>(all(global0.c), 8085u == _wgslsmith_sub_u32(~24959u, _wgslsmith_div_u32(global1.x, var_0.d.b.x)), all(vec3<bool>(var_0.b, global0.c.x, global0.c.x)) | var_1.b), Struct_1(max(~global0.a.a, max(arg_1.a, _wgslsmith_sub_vec4_u32(arg_1.a, vec4<u32>(global0.a.b.x, 4294967295u, u_input.b.x, var_0.d.a.x)))), vec3<u32>(1u, _wgslsmith_dot_vec4_u32(abs(arg_1.a), var_1.a.a), u_input.d.x)));
    var var_2 = vec3<bool>(false, arg_2.c.x, var_0.c.x);
    return vec3<bool>(any(select(vec4<bool>(var_0.c.x, all(vec3<bool>(false, global0.c.x, var_2.x)), true, true), vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(false, var_0.c.x, false, var_1.b)), var_0.b, true, true))), any(!vec2<bool>(true, !arg_2.c.x)), any(vec4<bool>(true, (var_1.c.x & global0.c.x) | !var_1.b, select(global0.b, true, true), select(global0.b && true, false, true))));
}

fn func_2(arg_0: bool) -> Struct_2 {
    global0 = Struct_2(global2[_wgslsmith_index_u32(u_input.a, 28u)], global0.c.x, func_3(~(~(-2147483647i)) << (_wgslsmith_mod_u32(max(global0.d.a.x, 4294967295u), ~41804u) % 32u), global2[_wgslsmith_index_u32(4294967295u, 28u)], Struct_2(global0.d, arg_0 | arg_0, select(!vec3<bool>(false, global0.c.x, global0.b), global0.c, false), Struct_1(vec4<u32>(global0.a.a.x, 0u, 15857u, global0.a.b.x), global1.zyw))), Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 58871u), u_input.d & vec2<u32>(u_input.d.x, global0.d.b.x)), ~u_input.d.x | global1.x, _wgslsmith_mod_u32(global1.x, u_input.d.x & 1u), max(global0.d.a.x, select(4294967295u, 24270u, global0.c.x))), vec3<u32>(firstTrailingBit(select(u_input.a, global1.x, arg_0)), ~85863u, ~countOneBits(46470u))));
    return Struct_2(global2[_wgslsmith_index_u32(global0.a.a.x << ((select(u_input.b.x & global0.a.b.x, u_input.b.x, all(global0.c.xy)) << (4294967295u % 32u)) % 32u), 28u)], func_3(_wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(4035i, 1461i), 13095i), ~1i), Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, 27084u, 1u, global1.x), u_input.c), u_input.c), min(vec3<u32>(0u, u_input.d.x, global1.x) << (vec3<u32>(1u, global0.a.a.x, 4294967295u) % vec3<u32>(32u)), max(global1.yzx, u_input.c.zxx))), Struct_2(Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.a.a.x, 1u, u_input.a, global1.x), vec4<u32>(34228u, global0.a.a.x, global1.x, 1u)), ~global1.xyx), !all(vec4<bool>(global0.c.x, arg_0, true, arg_0)), select(global0.c, !vec3<bool>(true, true, global0.b), global0.b), Struct_1(global0.a.a, vec3<u32>(global0.d.a.x, 14344u, u_input.b.x)))).x, vec3<bool>(true, true, true), global0.a);
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: bool) -> Struct_2 {
    global0 = func_2(false);
    let var_0 = _wgslsmith_sub_vec4_i32(~(select(vec4<i32>(26957i, arg_1.x, arg_1.x, arg_1.x), vec4<i32>(2147483647i, arg_1.x, arg_1.x, 28860i), vec4<bool>(global0.b, arg_2, arg_2, global0.c.x)) << (~(~u_input.c) % vec4<u32>(32u))), ~vec4<i32>(~arg_1.x, select(select(arg_1.x, 58028i, false), reverseBits(arg_1.x), !global0.b), ~arg_1.x, arg_1.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-456f, -1555f, arg_0) * vec3<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -926f), _wgslsmith_f_op_f32(-arg_0)))));
    let var_2 = Struct_1(firstLeadingBit(global0.d.a), global0.d.a.ywy);
    return func_2(false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~2147483647i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global0 = func_1(var_1, ~abs(select(~vec4<i32>(var_0, 12939i, -2147483647i, 2147483647i), vec4<i32>(var_0, var_0, var_0, 3435i) & vec4<i32>(14894i, 4893i, 2147483647i, var_0), vec4<bool>(global0.c.x, true, false, false))), !any(select(select(vec3<bool>(global0.b, global0.b, false), global0.c, global0.b), global0.c, true)));
    var var_2 = ~u_input.d.x <= (_wgslsmith_mod_u32(func_2(global0.b).a.b.x, _wgslsmith_add_u32(4294967295u, u_input.b.x) & (global0.a.b.x << (0u % 32u))) & 27812u);
    let var_3 = func_2(global0.b).c.x;
    var var_4 = func_2(all(!func_2(any(vec2<bool>(global0.c.x, false))).c.yy)).a;
    var var_5 = func_1(var_1, vec4<i32>(-14607i, -2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, var_0, 4964i, var_0), vec4<i32>(0i, var_0, 1i, var_0)), vec4<i32>(var_0, 12109i, -64982i, var_0)) << (17482u % 32u), min(-20071i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(-2147483647i, 50405i, var_0), vec3<i32>(-12186i, 1i, -1i), global0.c.x), min(vec3<i32>(-1i, var_0, -1i), vec3<i32>(113070i, -48685i, -23653i))))), !(!((var_0 ^ var_0) <= var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.d.a.x, countOneBits(_wgslsmith_mod_i32(select(var_0, 29005i, true), var_0)), vec3<i32>(var_0, -var_0, (i32(-1i) * -2147483647i) & var_0), u_input.c);
}

