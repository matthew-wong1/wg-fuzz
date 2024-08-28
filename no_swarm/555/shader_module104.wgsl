struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(vec3<u32>(28838u, 32496u, 0u), Struct_2(vec3<u32>(28055u, 26121u, 60909u), vec4<bool>(true, false, false, false), Struct_1(vec2<bool>(false, false), vec3<u32>(33596u, 4294967295u, 0u)), Struct_1(vec2<bool>(false, true), vec3<u32>(4294967295u, 1u, 1u)))), Struct_3(vec3<u32>(25525u, 14672u, 4294967295u), Struct_2(vec3<u32>(14106u, 30876u, 4294967295u), vec4<bool>(true, true, true, false), Struct_1(vec2<bool>(true, false), vec3<u32>(3953u, 0u, 35748u)), Struct_1(vec2<bool>(false, false), vec3<u32>(1u, 1u, 0u)))), Struct_3(vec3<u32>(0u, 93645u, 1u), Struct_2(vec3<u32>(0u, 4294967295u, 0u), vec4<bool>(true, false, false, false), Struct_1(vec2<bool>(true, true), vec3<u32>(20732u, 1u, 0u)), Struct_1(vec2<bool>(false, true), vec3<u32>(17958u, 0u, 75902u)))), Struct_3(vec3<u32>(0u, 49162u, 7749u), Struct_2(vec3<u32>(0u, 4294967295u, 36213u), vec4<bool>(false, false, true, false), Struct_1(vec2<bool>(false, true), vec3<u32>(13022u, 55762u, 60725u)), Struct_1(vec2<bool>(false, true), vec3<u32>(46909u, 75358u, 1u)))), Struct_3(vec3<u32>(44093u, 0u, 26763u), Struct_2(vec3<u32>(41615u, 19914u, 4294967295u), vec4<bool>(true, true, true, false), Struct_1(vec2<bool>(false, true), vec3<u32>(4294967295u, 22640u, 4294967295u)), Struct_1(vec2<bool>(false, true), vec3<u32>(43307u, 4294967295u, 1u)))), Struct_3(vec3<u32>(138887u, 30791u, 7641u), Struct_2(vec3<u32>(24433u, 8749u, 1101u), vec4<bool>(false, false, false, true), Struct_1(vec2<bool>(false, false), vec3<u32>(0u, 45428u, 0u)), Struct_1(vec2<bool>(true, true), vec3<u32>(20795u, 0u, 4294967295u)))), Struct_3(vec3<u32>(37528u, 0u, 4294967295u), Struct_2(vec3<u32>(25725u, 1u, 55329u), vec4<bool>(false, true, true, false), Struct_1(vec2<bool>(true, false), vec3<u32>(0u, 8715u, 39063u)), Struct_1(vec2<bool>(true, false), vec3<u32>(4294967295u, 1u, 108077u)))), Struct_3(vec3<u32>(16687u, 0u, 0u), Struct_2(vec3<u32>(4294967295u, 1u, 4294967295u), vec4<bool>(false, true, true, false), Struct_1(vec2<bool>(false, true), vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_1(vec2<bool>(true, false), vec3<u32>(23031u, 0u, 4294967295u)))), Struct_3(vec3<u32>(0u, 12571u, 35765u), Struct_2(vec3<u32>(31270u, 64733u, 35874u), vec4<bool>(false, true, true, false), Struct_1(vec2<bool>(true, false), vec3<u32>(1760u, 34034u, 16813u)), Struct_1(vec2<bool>(false, false), vec3<u32>(79613u, 0u, 4294967295u)))), Struct_3(vec3<u32>(1u, 13530u, 48327u), Struct_2(vec3<u32>(1u, 1u, 0u), vec4<bool>(false, false, false, true), Struct_1(vec2<bool>(true, false), vec3<u32>(0u, 4294967295u, 0u)), Struct_1(vec2<bool>(false, true), vec3<u32>(4294967295u, 80396u, 10950u)))), Struct_3(vec3<u32>(4294967295u, 58384u, 4294967295u), Struct_2(vec3<u32>(1u, 1u, 4294967295u), vec4<bool>(false, false, true, false), Struct_1(vec2<bool>(false, true), vec3<u32>(41211u, 19728u, 4294967295u)), Struct_1(vec2<bool>(false, false), vec3<u32>(0u, 29818u, 6537u)))), Struct_3(vec3<u32>(1u, 4294967295u, 1u), Struct_2(vec3<u32>(2154u, 55828u, 4294967295u), vec4<bool>(true, true, true, false), Struct_1(vec2<bool>(true, false), vec3<u32>(1u, 81041u, 1u)), Struct_1(vec2<bool>(false, true), vec3<u32>(3432u, 66255u, 1u)))), Struct_3(vec3<u32>(0u, 0u, 0u), Struct_2(vec3<u32>(4294967295u, 15187u, 0u), vec4<bool>(true, false, false, true), Struct_1(vec2<bool>(true, false), vec3<u32>(1u, 4294967295u, 4578u)), Struct_1(vec2<bool>(false, true), vec3<u32>(70412u, 80518u, 4294967295u)))), Struct_3(vec3<u32>(4294967295u, 14078u, 59897u), Struct_2(vec3<u32>(1u, 1u, 0u), vec4<bool>(true, true, false, false), Struct_1(vec2<bool>(true, true), vec3<u32>(1u, 30548u, 4294967295u)), Struct_1(vec2<bool>(true, true), vec3<u32>(4294967295u, 0u, 146037u)))), Struct_3(vec3<u32>(0u, 0u, 76196u), Struct_2(vec3<u32>(7903u, 1u, 4294967295u), vec4<bool>(true, false, false, true), Struct_1(vec2<bool>(false, false), vec3<u32>(4294967295u, 1u, 65572u)), Struct_1(vec2<bool>(true, true), vec3<u32>(4294967295u, 0u, 4294967295u)))), Struct_3(vec3<u32>(0u, 28868u, 1u), Struct_2(vec3<u32>(6813u, 23813u, 74115u), vec4<bool>(true, true, false, true), Struct_1(vec2<bool>(true, false), vec3<u32>(53949u, 1u, 34305u)), Struct_1(vec2<bool>(false, true), vec3<u32>(0u, 1u, 1u)))), Struct_3(vec3<u32>(0u, 30433u, 53523u), Struct_2(vec3<u32>(46965u, 0u, 1u), vec4<bool>(true, true, false, false), Struct_1(vec2<bool>(true, true), vec3<u32>(86669u, 64181u, 18367u)), Struct_1(vec2<bool>(false, true), vec3<u32>(14644u, 4294967295u, 49965u)))), Struct_3(vec3<u32>(10181u, 1u, 1u), Struct_2(vec3<u32>(1u, 0u, 65884u), vec4<bool>(true, true, false, false), Struct_1(vec2<bool>(false, false), vec3<u32>(1u, 1u, 5026u)), Struct_1(vec2<bool>(true, false), vec3<u32>(4294967295u, 20969u, 37209u)))), Struct_3(vec3<u32>(1u, 1u, 69787u), Struct_2(vec3<u32>(8916u, 4294967295u, 10582u), vec4<bool>(true, true, true, false), Struct_1(vec2<bool>(true, true), vec3<u32>(10626u, 4294967295u, 1332u)), Struct_1(vec2<bool>(true, true), vec3<u32>(10042u, 32837u, 94587u)))), Struct_3(vec3<u32>(50341u, 4294967295u, 1u), Struct_2(vec3<u32>(0u, 1055u, 4294967295u), vec4<bool>(false, false, false, false), Struct_1(vec2<bool>(false, true), vec3<u32>(13204u, 1u, 87014u)), Struct_1(vec2<bool>(true, false), vec3<u32>(0u, 48229u, 56558u)))), Struct_3(vec3<u32>(10025u, 55179u, 1u), Struct_2(vec3<u32>(1u, 18233u, 4294967295u), vec4<bool>(true, true, false, false), Struct_1(vec2<bool>(false, true), vec3<u32>(1u, 0u, 9811u)), Struct_1(vec2<bool>(true, true), vec3<u32>(1u, 0u, 1u)))), Struct_3(vec3<u32>(14832u, 14440u, 4294967295u), Struct_2(vec3<u32>(0u, 4294967295u, 53334u), vec4<bool>(true, false, false, false), Struct_1(vec2<bool>(true, true), vec3<u32>(67358u, 30198u, 4294967295u)), Struct_1(vec2<bool>(false, true), vec3<u32>(1u, 34250u, 1u)))));

var<private> global1: Struct_3 = Struct_3(vec3<u32>(4294967295u, 1u, 0u), Struct_2(vec3<u32>(38851u, 48154u, 72338u), vec4<bool>(false, true, false, false), Struct_1(vec2<bool>(false, false), vec3<u32>(1u, 48840u, 1u)), Struct_1(vec2<bool>(false, false), vec3<u32>(0u, 4294967295u, 33716u))));

var<private> global2: array<Struct_3, 30>;

var<private> global3: array<f32, 7> = array<f32, 7>(-225f, -916f, -282f, -502f, -100f, 1000f, 814f);

var<private> global4: array<Struct_1, 3>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: vec4<u32>) -> Struct_2 {
    global0 = array<Struct_3, 22>();
    let var_0 = false;
    let var_1 = arg_0.d;
    global0 = array<Struct_3, 22>();
    global4 = array<Struct_1, 3>();
    return Struct_2(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_div_u32(~1u, ~1u), abs(_wgslsmith_mult_u32(1u, var_1.b.x)), arg_0.c.b.x), countOneBits(vec3<u32>(1u, 59859u, arg_0.d.b.x)), _wgslsmith_div_vec3_u32(arg_2.zxz, vec3<u32>(14924u, global1.b.c.b.x, arg_2.x) << (global1.b.a % vec3<u32>(32u)))), arg_0.b, Struct_1(global1.b.d.a, _wgslsmith_div_vec3_u32(vec3<u32>(arg_2.x, 1u, ~arg_2.x), arg_0.a)), arg_0.c);
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: i32) -> u32 {
    global2 = array<Struct_3, 30>();
    global0 = array<Struct_3, 22>();
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.b.d.b.x, global1.a.x), 7u)];
    global4 = array<Struct_1, 3>();
    global1 = global0[_wgslsmith_index_u32(~global1.b.d.b.x, 22u)];
    return 4294967295u;
}

fn func_1() -> i32 {
    var var_0 = false;
    global1 = Struct_3(global1.a, func_2(global1.b, 0i, select(max(vec4<u32>(1u, 0u, 4294967295u, 19676u), ~vec4<u32>(25717u, global1.b.a.x, global1.a.x, global1.b.a.x)), vec4<u32>(global1.a.x, global1.b.a.x, ~4294967295u, _wgslsmith_add_u32(global1.b.d.b.x, global1.a.x)), false & (true && global1.b.c.a.x))));
    var var_1 = global0[_wgslsmith_index_u32(func_2(global1.b, -u_input.a.x, vec4<u32>(select(_wgslsmith_mult_u32(global1.b.d.b.x, global1.b.c.b.x), func_3(vec4<i32>(u_input.a.x, -7821i, u_input.a.x, 25733i), false, 2147483647i), any(vec2<bool>(false, global1.b.b.x))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.x, 4294967295u, 38984u, 1u), vec4<u32>(global1.a.x, 22364u, 55458u, global1.a.x)), 1u, 4294967295u)).d.b.x ^ ~4294967295u, 22u)];
    return max(1i << ((_wgslsmith_dot_vec3_u32(var_1.b.c.b << (vec3<u32>(1u, 5475u, global1.b.d.b.x) % vec3<u32>(32u)), vec3<u32>(var_1.b.d.b.x, 1u, 4294967295u)) >> (var_1.b.c.b.x % 32u)) % 32u), ~u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(2147483647i & u_input.a.x, u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, func_1()), -min(select(u_input.a.xy, vec2<i32>(u_input.a.x, u_input.a.x), true), -vec2<i32>(u_input.a.x, u_input.a.x))), 5550i);
    var var_1 = Struct_3(~(~abs(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.a.x, global1.b.c.b.x, global1.a.x), global1.a))), Struct_2(~vec3<u32>(~42191u, global1.b.a.x, global1.a.x), func_2(Struct_2(global1.b.d.b, vec4<bool>(true, global1.b.b.x, false, global1.b.b.x), func_2(Struct_2(global1.a, vec4<bool>(true, false, global1.b.c.a.x, global1.b.b.x), global4[_wgslsmith_index_u32(global1.a.x, 3u)], global1.b.c), 1i, vec4<u32>(global1.b.d.b.x, global1.a.x, global1.a.x, global1.a.x)).d, func_2(Struct_2(global1.b.c.b, global1.b.b, global1.b.c, global4[_wgslsmith_index_u32(24007u, 3u)]), -2147483647i, vec4<u32>(1u, global1.b.d.b.x, global1.a.x, 71962u)).c), -18498i, ~min(vec4<u32>(global1.b.a.x, global1.b.a.x, 67031u, 48694u), vec4<u32>(22629u, global1.a.x, global1.b.d.b.x, 1u))).b, global4[_wgslsmith_index_u32(global1.a.x, 3u)], Struct_1(select(vec2<bool>(false, global1.b.b.x), vec2<bool>(global1.b.b.x, global1.b.c.a.x), true & global1.b.b.x), vec3<u32>(max(4294967295u, global1.b.d.b.x), func_3(var_0, true, -23376i), ~0u))));
    var var_2 = -_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, var_0.x ^ 0i), _wgslsmith_dot_vec3_i32(var_0.xxz, select(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -20895i, 2147483647i), var_0.yzw), _wgslsmith_mult_vec3_i32(u_input.a, var_0.zxw), select(var_1.b.b.ywx, vec3<bool>(false, false, true), false))), 1i);
    let var_3 = var_0.x;
    let var_4 = u_input.a.xz;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, ~vec4<i32>(-33335i, var_3 << (var_1.a.x % 32u), countOneBits(var_3), u_input.a.x) ^ ~(~(-vec4<i32>(2147483647i, u_input.a.x, var_3, -18579i))), var_0, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u >> (global1.b.a.x % 32u), 7u)])), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32((vec4<u32>(var_1.a.x, 0u, var_1.a.x, global1.b.a.x) << (vec4<u32>(4294967295u, 1u, 36367u, global1.b.a.x) % vec4<u32>(32u))) >> ((vec4<u32>(27454u, 59054u, var_1.a.x, var_1.a.x) >> (vec4<u32>(global1.b.d.b.x, 1u, 17467u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)), ~(vec4<u32>(global1.b.c.b.x, 1u, var_1.a.x, var_1.a.x) >> (vec4<u32>(global1.a.x, global1.b.a.x, global1.a.x, 4294967295u) % vec4<u32>(32u)))), 7u)]), -(var_0 & vec4<i32>(var_3, 0i, -19412i, -1i)));
}

