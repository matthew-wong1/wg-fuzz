struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
    d: bool,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: array<Struct_1, 1>;

var<private> global2: bool;

var<private> global3: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec3<i32>(-16303i, 17870i, 10335i), Struct_1(vec2<bool>(false, true), 1372i, vec4<bool>(false, false, false, false), true), 666f, false, vec4<u32>(2869u, 49041u, 15657u, 4294967295u)), Struct_2(vec3<i32>(-18880i, 65326i, 2147483647i), Struct_1(vec2<bool>(false, false), -8878i, vec4<bool>(true, true, true, false), false), 1000f, true, vec4<u32>(32225u, 36445u, 4294967295u, 9387u)), Struct_2(vec3<i32>(i32(-2147483648), -32808i, 2147483647i), Struct_1(vec2<bool>(false, true), -21755i, vec4<bool>(true, false, false, true), true), -747f, false, vec4<u32>(59166u, 4294967295u, 1u, 70814u)), Struct_2(vec3<i32>(22753i, 79959i, 0i), Struct_1(vec2<bool>(true, true), 0i, vec4<bool>(false, false, true, true), true), -1546f, false, vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u)), Struct_2(vec3<i32>(-19146i, -5155i, 11475i), Struct_1(vec2<bool>(false, false), 12522i, vec4<bool>(false, false, true, true), true), -1348f, true, vec4<u32>(1u, 32189u, 1u, 10888u)), Struct_2(vec3<i32>(18018i, i32(-2147483648), 2147483647i), Struct_1(vec2<bool>(false, false), -1i, vec4<bool>(true, false, false, true), true), -2303f, true, vec4<u32>(4294967295u, 6127u, 4217u, 1u)), Struct_2(vec3<i32>(45900i, 2147483647i, i32(-2147483648)), Struct_1(vec2<bool>(true, true), 2147483647i, vec4<bool>(true, true, true, false), false), 595f, false, vec4<u32>(123934u, 85633u, 7785u, 1u)), Struct_2(vec3<i32>(2147483647i, 0i, 50914i), Struct_1(vec2<bool>(true, false), -5709i, vec4<bool>(true, false, false, false), true), 204f, true, vec4<u32>(1u, 46740u, 18402u, 1u)), Struct_2(vec3<i32>(61214i, 60928i, -9350i), Struct_1(vec2<bool>(false, true), 33644i, vec4<bool>(false, true, false, false), true), -358f, false, vec4<u32>(1u, 4294967295u, 10367u, 1u)), Struct_2(vec3<i32>(15650i, i32(-2147483648), -11387i), Struct_1(vec2<bool>(true, true), -19029i, vec4<bool>(false, false, true, true), true), 283f, false, vec4<u32>(74540u, 117469u, 95526u, 0u)), Struct_2(vec3<i32>(13728i, 1i, -48479i), Struct_1(vec2<bool>(true, true), i32(-2147483648), vec4<bool>(true, true, true, false), false), -1391f, false, vec4<u32>(30562u, 4294967295u, 97908u, 32615u)), Struct_2(vec3<i32>(0i, 2147483647i, -22681i), Struct_1(vec2<bool>(true, false), 2147483647i, vec4<bool>(true, true, false, true), false), 634f, true, vec4<u32>(1u, 0u, 49429u, 0u)), Struct_2(vec3<i32>(2147483647i, -1i, 1i), Struct_1(vec2<bool>(true, false), -3225i, vec4<bool>(false, false, false, false), true), -1000f, true, vec4<u32>(1u, 19342u, 23493u, 1u)), Struct_2(vec3<i32>(2147483647i, -46394i, 0i), Struct_1(vec2<bool>(false, true), -3757i, vec4<bool>(false, false, false, false), true), 1000f, false, vec4<u32>(77262u, 0u, 0u, 37634u)), Struct_2(vec3<i32>(0i, 20485i, i32(-2147483648)), Struct_1(vec2<bool>(false, true), 0i, vec4<bool>(true, false, false, true), false), 461f, false, vec4<u32>(16055u, 20275u, 1u, 4294967295u)), Struct_2(vec3<i32>(1i, 2147483647i, i32(-2147483648)), Struct_1(vec2<bool>(false, false), -21905i, vec4<bool>(true, false, false, true), false), 1253f, true, vec4<u32>(1u, 1u, 0u, 1u)), Struct_2(vec3<i32>(26693i, 20629i, -28943i), Struct_1(vec2<bool>(true, false), -1i, vec4<bool>(false, true, true, true), true), -107f, true, vec4<u32>(34157u, 31281u, 109802u, 1u)), Struct_2(vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), Struct_1(vec2<bool>(false, true), 52233i, vec4<bool>(true, true, false, false), false), 761f, false, vec4<u32>(4294967295u, 4294967295u, 70428u, 12532u)), Struct_2(vec3<i32>(-80402i, i32(-2147483648), -23458i), Struct_1(vec2<bool>(false, true), 1i, vec4<bool>(true, false, true, true), true), -1960f, true, vec4<u32>(3160u, 24250u, 4294967295u, 1u)), Struct_2(vec3<i32>(2147483647i, i32(-2147483648), -397i), Struct_1(vec2<bool>(false, false), 0i, vec4<bool>(false, false, true, false), true), 1260f, false, vec4<u32>(53604u, 4294967295u, 0u, 0u)), Struct_2(vec3<i32>(i32(-2147483648), 17862i, 2147483647i), Struct_1(vec2<bool>(false, false), -39609i, vec4<bool>(false, true, true, true), false), -764f, false, vec4<u32>(15036u, 32116u, 47268u, 1u)), Struct_2(vec3<i32>(1i, i32(-2147483648), -1i), Struct_1(vec2<bool>(true, true), -1i, vec4<bool>(false, false, false, true), true), 178f, false, vec4<u32>(31671u, 111347u, 72426u, 22518u)), Struct_2(vec3<i32>(-18815i, -5602i, 7014i), Struct_1(vec2<bool>(true, true), 9767i, vec4<bool>(true, true, false, true), true), -118f, true, vec4<u32>(15635u, 0u, 47762u, 0u)), Struct_2(vec3<i32>(i32(-2147483648), 13712i, -22683i), Struct_1(vec2<bool>(true, false), i32(-2147483648), vec4<bool>(true, false, true, true), false), -1036f, false, vec4<u32>(9516u, 34409u, 0u, 22710u)), Struct_2(vec3<i32>(-13779i, -26109i, 2147483647i), Struct_1(vec2<bool>(false, false), 47015i, vec4<bool>(false, true, true, true), true), -334f, false, vec4<u32>(1u, 0u, 0u, 40003u)), Struct_2(vec3<i32>(49186i, 5893i, 0i), Struct_1(vec2<bool>(true, false), 17744i, vec4<bool>(false, true, false, true), false), 446f, true, vec4<u32>(4294967295u, 57513u, 0u, 1u)), Struct_2(vec3<i32>(13768i, 0i, 2147483647i), Struct_1(vec2<bool>(true, false), -39785i, vec4<bool>(false, false, true, true), false), 774f, false, vec4<u32>(30957u, 1u, 0u, 11532u)), Struct_2(vec3<i32>(6230i, -9344i, 29332i), Struct_1(vec2<bool>(true, false), 24330i, vec4<bool>(false, false, true, true), true), 479f, true, vec4<u32>(44086u, 5283u, 0u, 40801u)), Struct_2(vec3<i32>(-4399i, 6667i, 0i), Struct_1(vec2<bool>(true, true), 1i, vec4<bool>(true, true, false, true), true), -1000f, false, vec4<u32>(1u, 0u, 769u, 59633u)));

var<private> global4: Struct_2;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 1>();
    global1 = array<Struct_1, 1>();
    let var_0 = select(~0i, ~global4.b.b, global4.d);
    var var_1 = global4.b.c.www;
    var var_2 = global3[_wgslsmith_index_u32(4294967295u, 29u)];
    let var_3 = global4.e.x;
    var var_4 = global3[_wgslsmith_index_u32(firstTrailingBit(abs(~_wgslsmith_add_u32(global4.e.x, u_input.a.x))), 29u)];
    let var_5 = vec4<bool>(true, true, true, var_2.c >= -621f);
    var var_6 = Struct_2(vec3<i32>(~(-34527i), _wgslsmith_mult_i32(~var_4.b.b, 36848i), var_0), Struct_1(global4.b.a, -(var_2.a.x >> (62591u % 32u)), vec4<bool>(all(select(var_2.b.c.wyw, var_4.b.c.zyz, vec3<bool>(true, false, global4.b.d))), false, !(u_input.b.x != var_2.e.x), !var_5.x), !var_2.b.a.x), var_2.c, true && global4.b.c.x, ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_2.e.x, 29478u, u_input.b.x, 52692u) >> (~vec4<u32>(var_4.e.x, var_2.e.x, var_4.e.x, 33092u) % vec4<u32>(32u)), (u_input.b | vec4<u32>(var_4.e.x, 32684u, 13443u, u_input.a.x)) << (_wgslsmith_clamp_vec4_u32(u_input.b, var_4.e, u_input.b) % vec4<u32>(32u)), vec4<u32>(0u, 1u, var_2.e.x, ~var_4.e.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(15747i), var_2.b.b);
}

