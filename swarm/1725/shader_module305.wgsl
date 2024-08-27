struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: bool,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1000f, -1404f);

var<private> global1: array<Struct_1, 1>;

var<private> global2: bool = false;

var<private> global3: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec4<u32>(0u, 54633u, 36769u, 73693u), Struct_1(vec3<u32>(4294967295u, 1u, 16553u), false, false, vec4<i32>(9088i, -36819i, -62786i, -1i), false), vec2<u32>(1u, 49185u)), Struct_2(vec4<u32>(36273u, 4294967295u, 8417u, 46970u), Struct_1(vec3<u32>(33572u, 0u, 0u), false, true, vec4<i32>(-41290i, -35813i, -12409i, 12028i), false), vec2<u32>(1u, 4294967295u)), Struct_2(vec4<u32>(0u, 4294967295u, 4294967295u, 1u), Struct_1(vec3<u32>(0u, 112407u, 823u), true, true, vec4<i32>(i32(-2147483648), -37254i, 39303i, -1i), true), vec2<u32>(25120u, 139723u)), Struct_2(vec4<u32>(64596u, 45752u, 16466u, 33404u), Struct_1(vec3<u32>(4294967295u, 1101u, 1u), false, false, vec4<i32>(1i, -48621i, -19813i, -1i), false), vec2<u32>(106809u, 1u)), Struct_2(vec4<u32>(4294967295u, 1u, 81119u, 4294967295u), Struct_1(vec3<u32>(1u, 33891u, 24232u), false, true, vec4<i32>(-54247i, 34243i, -1i, -16276i), false), vec2<u32>(1u, 4294967295u)), Struct_2(vec4<u32>(60532u, 21688u, 12793u, 25713u), Struct_1(vec3<u32>(1u, 1u, 1u), false, true, vec4<i32>(-14468i, 1i, 41268i, -16077i), false), vec2<u32>(58215u, 13375u)), Struct_2(vec4<u32>(40813u, 52631u, 4294967295u, 55027u), Struct_1(vec3<u32>(112088u, 16905u, 12145u), false, true, vec4<i32>(-12740i, -6663i, 0i, 1i), true), vec2<u32>(1u, 6843u)), Struct_2(vec4<u32>(83909u, 0u, 47153u, 4294967295u), Struct_1(vec3<u32>(1607u, 1290u, 62293u), false, true, vec4<i32>(67805i, 0i, 1i, 2147483647i), false), vec2<u32>(49220u, 99742u)), Struct_2(vec4<u32>(1u, 59439u, 0u, 0u), Struct_1(vec3<u32>(0u, 0u, 1u), true, true, vec4<i32>(-1i, 2147483647i, -1i, -33672i), true), vec2<u32>(66556u, 77144u)), Struct_2(vec4<u32>(0u, 4294967295u, 36034u, 0u), Struct_1(vec3<u32>(23962u, 64618u, 4294967295u), false, false, vec4<i32>(17639i, 0i, 6645i, 45992i), true), vec2<u32>(4294967295u, 1u)), Struct_2(vec4<u32>(60552u, 4294967295u, 1u, 4294967295u), Struct_1(vec3<u32>(86058u, 0u, 11030u), false, true, vec4<i32>(i32(-2147483648), 1i, 2147483647i, i32(-2147483648)), true), vec2<u32>(42839u, 4294967295u)), Struct_2(vec4<u32>(1u, 4294967295u, 1u, 1u), Struct_1(vec3<u32>(0u, 33155u, 0u), true, true, vec4<i32>(1i, -2977i, i32(-2147483648), -21378i), false), vec2<u32>(109u, 11402u)), Struct_2(vec4<u32>(4294967295u, 4294967295u, 94226u, 71961u), Struct_1(vec3<u32>(4294967295u, 1u, 29173u), true, true, vec4<i32>(0i, 9266i, 2147483647i, 2147483647i), true), vec2<u32>(27063u, 4294967295u)), Struct_2(vec4<u32>(48773u, 4294967295u, 1u, 46770u), Struct_1(vec3<u32>(83898u, 0u, 0u), false, true, vec4<i32>(2147483647i, -6666i, 2147483647i, 17985i), false), vec2<u32>(55210u, 11039u)), Struct_2(vec4<u32>(4294967295u, 0u, 1u, 55731u), Struct_1(vec3<u32>(23841u, 4294967295u, 35155u), false, false, vec4<i32>(-1i, 1i, 39701i, 41978i), false), vec2<u32>(53406u, 4294967295u)), Struct_2(vec4<u32>(4294967295u, 1u, 0u, 27626u), Struct_1(vec3<u32>(4294967295u, 13349u, 4294967295u), false, true, vec4<i32>(2147483647i, 0i, 6570i, -41226i), true), vec2<u32>(10295u, 4294967295u)), Struct_2(vec4<u32>(4294967295u, 42983u, 11012u, 0u), Struct_1(vec3<u32>(0u, 46u, 1144u), false, false, vec4<i32>(-1i, -50490i, -48172i, 2147483647i), true), vec2<u32>(35587u, 75981u)), Struct_2(vec4<u32>(0u, 68256u, 68109u, 15218u), Struct_1(vec3<u32>(92032u, 22319u, 26322u), true, true, vec4<i32>(0i, 0i, -40724i, -29975i), true), vec2<u32>(4294967295u, 0u)), Struct_2(vec4<u32>(1u, 10284u, 45318u, 4294967295u), Struct_1(vec3<u32>(78616u, 5733u, 61292u), false, true, vec4<i32>(-29768i, -1547i, 2147483647i, 0i), false), vec2<u32>(11615u, 1u)), Struct_2(vec4<u32>(41153u, 1u, 39303u, 4294967295u), Struct_1(vec3<u32>(4294967295u, 22806u, 1u), true, true, vec4<i32>(-36653i, -26018i, 3501i, -18446i), true), vec2<u32>(4294967295u, 10027u)), Struct_2(vec4<u32>(4294967295u, 4294967295u, 35437u, 36603u), Struct_1(vec3<u32>(65768u, 1u, 0u), false, false, vec4<i32>(-8142i, -9382i, 24768i, -7925i), true), vec2<u32>(66933u, 4294967295u)), Struct_2(vec4<u32>(105946u, 1u, 36947u, 45657u), Struct_1(vec3<u32>(0u, 0u, 103023u), false, true, vec4<i32>(-1i, 20068i, 0i, 0i), true), vec2<u32>(0u, 17546u)), Struct_2(vec4<u32>(0u, 76286u, 0u, 50283u), Struct_1(vec3<u32>(44049u, 1u, 15810u), false, false, vec4<i32>(-42025i, 3469i, -1i, 0i), false), vec2<u32>(0u, 1u)), Struct_2(vec4<u32>(4294967295u, 0u, 51195u, 26473u), Struct_1(vec3<u32>(0u, 5779u, 0u), true, true, vec4<i32>(-20064i, -1i, 9722i, i32(-2147483648)), false), vec2<u32>(86127u, 3568u)), Struct_2(vec4<u32>(0u, 1u, 4294967295u, 1u), Struct_1(vec3<u32>(35667u, 81574u, 0u), true, true, vec4<i32>(-22274i, i32(-2147483648), 55504i, 10373i), false), vec2<u32>(11893u, 7335u)), Struct_2(vec4<u32>(24712u, 0u, 8401u, 0u), Struct_1(vec3<u32>(0u, 0u, 48006u), true, true, vec4<i32>(-45228i, -11017i, -67673i, 44706i), false), vec2<u32>(17214u, 1u)), Struct_2(vec4<u32>(30712u, 27089u, 6644u, 4294967295u), Struct_1(vec3<u32>(103187u, 0u, 95068u), false, true, vec4<i32>(-2095i, 58025i, -38913i, 0i), false), vec2<u32>(39518u, 1u)));

var<private> global4: vec2<f32> = vec2<f32>(1535f, -863f);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> vec3<i32> {
    global1 = array<Struct_1, 1>();
    var var_0 = ~(~firstTrailingBit(~vec2<u32>(1u, 126613u) | vec2<u32>(691u, arg_1)));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(319f + -330f) - _wgslsmith_f_op_f32(1146f - global0.x)), arg_2)));
    var var_1 = global1[_wgslsmith_index_u32(arg_0.a.x, 1u)];
    let var_2 = firstTrailingBit(-1i);
    return -(~vec3<i32>(~0i, 1i, ~(~u_input.a.x)));
}

fn func_3() -> u32 {
    global3 = array<Struct_2, 27>();
    global0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-350f, 188f) - vec2<f32>(global4.x, 1000f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 1196f) + vec2<f32>(1080f, global0.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(808f, -558f)) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-357f, global0.x))))))));
    let var_0 = u_input.a.zxy;
    let var_1 = 0u;
    var var_2 = vec2<i32>(2147483647i, var_0.x) >> (min(min(_wgslsmith_div_vec2_u32(~vec2<u32>(var_1, 36043u), vec2<u32>(var_1, var_1)), vec2<u32>(0u, 0u) & ~vec2<u32>(4294967295u, var_1)), vec2<u32>(0u, 11622u)) % vec2<u32>(32u));
    return _wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_1, var_1, max(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1, var_1), vec2<u32>(var_1, var_1) << (vec2<u32>(var_1, 22883u) % vec2<u32>(32u))), ~(~0u))), 1u);
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: i32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(select(max(vec3<u32>(45777u, 87385u, 29228u), vec3<u32>(4294967295u, 34342u, 4294967295u)), vec3<u32>(29756u, 0u, 13809u), true), ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(25483u, 53339u, 0u))), ~abs(vec3<u32>(1u, 1u, 43729u))), -arg_0 > _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), -u_input.a.x), all(vec3<bool>(true, true, true)), ~(~u_input.a), false);
    global4 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-450f))) * _wgslsmith_f_op_f32(trunc(global4.x))))), 200f);
    let var_1 = ~var_0.d.wx;
    let var_2 = max(func_2(global1[_wgslsmith_index_u32(~(~var_0.a.x), 1u)], _wgslsmith_dot_vec2_u32(var_0.a.zx >> (~vec2<u32>(var_0.a.x, 96590u) % vec2<u32>(32u)), ~(~vec2<u32>(12233u, var_0.a.x))), arg_1.x), vec3<i32>(u_input.a.x, ~(-var_1.x), arg_2));
    let var_3 = Struct_2(abs(vec4<u32>(69932u, func_3(), _wgslsmith_dot_vec2_u32(var_0.a.zx, firstTrailingBit(vec2<u32>(1u, 0u))), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.a.x, var_0.a.x, var_0.a.x), vec4<u32>(var_0.a.x, 4294967295u, 4294967295u, var_0.a.x)), max(var_0.a.x, 25069u)))), global1[_wgslsmith_index_u32(4294967295u, 1u)], _wgslsmith_mod_vec2_u32(vec2<u32>(~var_0.a.x, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(51532u, var_0.a.x), vec2<u32>(4294967295u, var_0.a.x)), _wgslsmith_clamp_vec2_u32(var_0.a.yx, vec2<u32>(19119u, 4294967295u), vec2<u32>(var_0.a.x, 1u)))), var_0.a.zy));
    return _wgslsmith_mod_u32(var_0.a.x, 30757u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, true, true);
    let var_1 = Struct_2(vec4<u32>(~firstTrailingBit(abs(0u)), ~(~1u), _wgslsmith_div_u32(~(~4294967295u), func_1(select(u_input.a.x, 0i, false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1559f, global0.x)), u_input.a.x)), ~_wgslsmith_mult_u32(1u, 351u)), Struct_1(~vec3<u32>(~1u, 4294967295u, abs(28304u)), true, all(!vec2<bool>(var_0.x, var_0.x)), u_input.a, global4.x > 1000f), ~min(firstTrailingBit(vec2<u32>(1u, 1u)), ~vec2<u32>(38700u, 4294967295u)));
    var var_2 = Struct_2(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(select(var_1.a | var_1.a, var_1.a, true), var_1.a), _wgslsmith_div_vec4_u32(select(min(var_1.a, vec4<u32>(var_1.b.a.x, 54335u, var_1.b.a.x, var_1.a.x)), var_1.a, select(vec4<bool>(var_1.b.b, var_0.x, var_1.b.c, var_0.x), vec4<bool>(true, var_1.b.e, var_1.b.e, var_0.x), true)), vec4<u32>(~var_1.c.x, ~1u, var_1.c.x ^ 1u, ~var_1.c.x)), ~(var_1.a << (var_1.a % vec4<u32>(32u)))), var_1.b, _wgslsmith_div_vec2_u32(firstLeadingBit(firstLeadingBit(~vec2<u32>(var_1.b.a.x, var_1.a.x))), ~(vec2<u32>(var_1.c.x, var_1.c.x) ^ var_1.c)));
    let var_3 = Struct_1(var_2.b.a, true, true, (countOneBits(vec4<i32>(var_2.b.d.x, var_2.b.d.x, 2147483647i, 0i)) ^ _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(var_2.b.d.x, var_1.b.d.x, var_2.b.d.x, -13105i))) << (~reverseBits(vec4<u32>(1u, 1u, var_2.a.x, var_2.b.a.x)) % vec4<u32>(32u)), !(!var_0.x));
    let var_4 = global0.x;
    var var_5 = Struct_2(reverseBits(~firstTrailingBit(vec4<u32>(var_2.c.x, 4294967295u, 0u, var_1.b.a.x))), var_3, _wgslsmith_mult_vec2_u32(min(var_3.a.zx, ~(~var_1.b.a.xx)), var_2.c));
    let var_6 = any(select(vec4<bool>(var_2.b.b, !var_0.x, all(!var_0.xy), false), vec4<bool>(var_3.c, !select(var_2.b.b, var_3.e, false), false, (false || var_1.b.b) == var_0.x), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(422f, 319f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(754f, -2246f)))))))), firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(var_2.a.wzx, vec3<u32>(var_5.c.x, var_1.c.x, 23811u)), select(vec3<u32>(var_1.c.x, 0u, var_1.b.a.x), vec3<u32>(var_5.a.x, var_2.c.x, var_5.c.x), vec3<bool>(var_5.b.c, true, true))), 1u)), _wgslsmith_mod_i32(~_wgslsmith_mult_i32(var_1.b.d.x, 15989i), -1i), (~var_3.a | var_1.b.a) | ~abs(vec3<u32>(4294967295u, var_5.b.a.x, var_3.a.x)));
}

